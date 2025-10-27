import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_series/core/route/route_name.dart';
import 'package:riverpod_series/features/login/presentation/widget/login_screen.dart';
import 'package:riverpod_series/features/signup/presentation/widget/signup_screen.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/login',
        name: loginRoute,
        builder: (context, state) => LoginScreen(),
      ),
      GoRoute(
        path: '/signup',
        name: signupRoute,
        builder: (context, state) => SignupScreen(),
      ),
    ],
  );
});
