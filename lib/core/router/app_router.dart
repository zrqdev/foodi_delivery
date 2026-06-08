import 'package:foodi_delivery/features/auth/presentation/screens/login_screen.dart';
import 'package:foodi_delivery/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:foodi_delivery/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const String kOnboarding = '/';
  static const String kLogin = '/login';
  static const String kSignUp = '/signUp';

  static final router = GoRouter(
    initialLocation: kOnboarding,
    routes: [
      GoRoute(
        path: kOnboarding,
        builder: (context, state) => OnboardingScreen(),
      ),
      GoRoute(
        path: kLogin,
        builder: (context, state) => LoginScreen(),
      ),
      GoRoute(
        path: kSignUp,
        builder: (context, state) => SignUpScreen(),
      ),
    ],
  );
}
