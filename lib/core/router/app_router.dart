import 'package:go_router/go_router.dart';
import 'package:godec/features/auth/presentation/page/forgot_password_page.dart';
import 'package:godec/features/auth/presentation/page/landing_page.dart';
import 'package:godec/features/auth/presentation/page/login_page.dart';
import 'package:godec/features/auth/presentation/page/signup_page.dart';
import 'package:godec/features/navigation/main_navigation.dart';
import 'package:godec/features/order/presentation/page/front_order_page.dart';
import 'package:godec/features/order/presentation/page/order_page.dart';
import 'package:godec/features/promo/presentation/promo_code.dart';
import 'package:godec/features/promo/presentation/promo_desc.dart';
import 'package:godec/features/promo/presentation/promo_list.dart';
import 'package:godec/features/profile/profile.dart';
import 'package:godec/features/wallet/presentation/page/add_card_page.dart';
import 'package:godec/features/wallet/presentation/page/qr_page.dart';
import 'package:godec/features/wallet/presentation/page/top_up_page.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/auth/landing',
    routes: [
      GoRoute(
        path: '/auth/profile',
        builder: (context, state) => const Profile(),
      ),
      GoRoute(
        path: '/auth/landing',
        builder: (context, state) => const LandingPage(),
      ),
      GoRoute(
        path: '/auth/login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/auth/signup',
        builder: (context, state) => const SignupPage(),
      ),
      GoRoute(
        path: '/auth/forgetpassword',
        builder: (context, state) => const ForgotPasswordPage(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const MainNavigation(currentIndex: 0),
      ),
      GoRoute(
        path: '/promo',
        builder: (context, state) => const MainNavigation(currentIndex: 1),
      ),
      GoRoute(
        path: '/promo/form',
        builder: (context, state) => const PromoForm(),
      ),
      GoRoute(
        path: '/wallet',
        builder: (context, state) => const MainNavigation(currentIndex: 2),
      ),
      GoRoute(
        path: '/activity',
        builder: (context, state) => const MainNavigation(currentIndex: 3),
      ),
      GoRoute(
        path: '/order',
        builder: (context, state) => const FrontOrderPage(),
      ),
      GoRoute(
        path: '/order/map',
        builder: (context, state) => const OrderPage(),
      ),
      GoRoute(
        path: '/promo/list',
        builder: (context, state) => const PromoList(),
      ),
      GoRoute(
        path: '/promo/desc',
        builder: (context, state) => const PromoDesc(),
      ),
      GoRoute(
        path: '/promo/form',
        builder: (context, state) => const PromoForm(),
      ),
      GoRoute(
        path: '/profile',
        builder: (context, state) => const Profile(),
      ),
      GoRoute(
        path: '/wallet',
        builder: (context, state) => const Profile(),
      ),
      GoRoute(
        path: '/wallet/topup',
        builder: (context, state) => const TopUpPage(),
      ),
      GoRoute(
        path: '/wallet/qr',
        builder: (context, state) => const QrPage(),
      ),
      GoRoute(
        path: '/wallet/card',
        builder: (context, state) => const AddCardPage(),
      ),
    ],
  );
}
