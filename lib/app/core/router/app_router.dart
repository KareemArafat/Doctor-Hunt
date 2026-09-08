import 'package:doctor_hunt/app/core/router/routes_names.dart';
import 'package:doctor_hunt/app/features/main/presentation/screens/choose_rule.dart';
import 'package:doctor_hunt/app/features/main/presentation/screens/onboarding1.dart';
import 'package:doctor_hunt/app/features/main/presentation/screens/onboarding2.dart';
import 'package:doctor_hunt/app/features/main/presentation/screens/onboarding3.dart';
import 'package:doctor_hunt/app/features/main/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
part 'app_router.g.dart';

final GoRouter appRouter = GoRouter(routes: $appRoutes);

@TypedGoRoute<SplashRoute>(path: RoutesNames.splashScreen)
class SplashRoute extends GoRouteData with $SplashRoute {
  const SplashRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SplashScreen();
  }
}

@TypedGoRoute<Onboarding1Route>(path: RoutesNames.onboarding1)
class Onboarding1Route extends GoRouteData with $Onboarding1Route {
  const Onboarding1Route();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Onboarding1();
  }
}

@TypedGoRoute<Onboarding2Route>(path: RoutesNames.onboarding2)
class Onboarding2Route extends GoRouteData with $Onboarding2Route {
  const Onboarding2Route();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Onboarding2();
  }
}

@TypedGoRoute<Onboarding3Route>(path: RoutesNames.onboarding3)
class Onboarding3Route extends GoRouteData with $Onboarding3Route {
  const Onboarding3Route();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Onboarding3();
  }
}

@TypedGoRoute<ChooseRuleRoute>(path: RoutesNames.chooseRule)
class ChooseRuleRoute extends GoRouteData with $ChooseRuleRoute {
  const ChooseRuleRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ChooseRule();
  }
}
