import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:godec/features/auth/data/models/user.dart';
import 'package:godec/features/auth/data/repository/user_repository.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  final UserRepository userRepository;

  AuthenticationBloc({required this.userRepository}) : super(AuthenticationInitial()) {
    on<AppStarted>(_onAppStarted);
    on<UserLoggedIn>(_onUserLoggedIn);
    on<UserLoggedOut>(_onUserLoggedOut);
  }

  Future<void> _onAppStarted(
      AppStarted event, Emitter<AuthenticationState> emit) async {
    emit(AuthenticationLoading());

    try {
      final currentUser = await userRepository.user.first;
      if (currentUser != MyUser.empty) {
        emit(AuthenticationAuthenticated(currentUser));
      } else {
        emit(AuthenticationUnauthenticated());
      }
    } catch (e) {
      emit(AuthenticationUnauthenticated());
    }
  }

  Future<void> _onUserLoggedIn(
      UserLoggedIn event, Emitter<AuthenticationState> emit) async {
    emit(AuthenticationAuthenticated(event.user));
  }

  Future<void> _onUserLoggedOut(
      UserLoggedOut event, Emitter<AuthenticationState> emit) async {
    await userRepository.logOut();
    emit(AuthenticationUnauthenticated());
  }
}
