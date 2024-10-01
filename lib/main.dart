import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:godec/core/router/app_router.dart';
import 'package:godec/features/auth/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:godec/features/auth/blocs/sign_up_bloc/sign_up_bloc.dart';
import 'package:godec/features/auth/data/repository/user_repository.dart';
import 'core/themes/app_theme.dart';
import 'features/auth/blocs/sign_in_bloc/sign_in_bloc.dart';
import 'core/log/simple_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final userRepository = UserRepository();
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp(userRepository: userRepository));
}

class MyApp extends StatelessWidget {
  final UserRepository userRepository;

  const MyApp({super.key, required this.userRepository});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthenticationBloc(userRepository: userRepository),
        ),
        BlocProvider(
          create: (context) => SignInBloc(userRepository),
        ),
        BlocProvider(
          create: (context) => SignUpBloc(),
        ),
      ],
      child: MaterialApp.router(
        title: 'GoDec',
        theme: AppTheme.lightTheme,
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
