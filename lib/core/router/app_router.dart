import 'package:foodi_delivery/core/app_shell.dart';
import 'package:foodi_delivery/features/auth/presentation/screens/login_screen.dart';
import 'package:foodi_delivery/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:foodi_delivery/features/browse/presentation/screens/home_screen.dart';
import 'package:foodi_delivery/features/browse/presentation/screens/order_details.dart';
import 'package:foodi_delivery/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:foodi_delivery/features/wishlist/presentation/screens/wishlist_screen.dart';
import 'package:go_router/go_router.dart';

import '../../features/checkout/presentation/screens/checkout_screen.dart';

class AppRouter {
  static const String kOnboarding = '/';
  static const String kLogin = '/login';
  static const String kSignUp = '/signUp';
  static const String kAppShell = '/appShell';
  static const String kHome = '/home';
  static const String kOrderDetails = '/orderDetails';
  static const String kWishlist = '/wishlist';
  static const String kCheckout = '/checkout';

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

      GoRoute(
        path: kHome,
        builder: (context, state) => HomeScreen(),
      ),
      GoRoute(
        path: kOrderDetails,
        builder: (context, state) => OrderDetails(),
      ),
      GoRoute(
        path: kWishlist,
        builder: (context, state) => WishlistScreen(),
      ),
      GoRoute(
        path: kAppShell,
        builder: (context, state) => AppShell(),
      ),
      GoRoute(
        path: kCheckout,
        builder: (context, state) => CheckoutScreen(),
      ),
    ],
  );
}
