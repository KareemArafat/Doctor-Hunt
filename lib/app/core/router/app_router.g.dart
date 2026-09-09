// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
  $splashRoute,
  $onboarding1Route,
  $onboarding2Route,
  $onboarding3Route,
  $chooseRuleRoute,
];

RouteBase get $splashRoute => GoRouteData.$route(
  path: '/',
  hasOverriddenOnExit: false,
  factory: $SplashRoute._fromState,
);

mixin $SplashRoute on GoRouteData {
  static SplashRoute _fromState(GoRouterState state) => const SplashRoute();

  @override
  String get location => GoRouteData.$location('/');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $onboarding1Route => GoRouteData.$route(
  path: '1',
  hasOverriddenOnExit: false,
  factory: $Onboarding1Route._fromState,
);

mixin $Onboarding1Route on GoRouteData {
  static Onboarding1Route _fromState(GoRouterState state) =>
      const Onboarding1Route();

  @override
  String get location => GoRouteData.$location('1');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $onboarding2Route => GoRouteData.$route(
  path: '2',
  hasOverriddenOnExit: false,
  factory: $Onboarding2Route._fromState,
);

mixin $Onboarding2Route on GoRouteData {
  static Onboarding2Route _fromState(GoRouterState state) =>
      const Onboarding2Route();

  @override
  String get location => GoRouteData.$location('2');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $onboarding3Route => GoRouteData.$route(
  path: '3',
  hasOverriddenOnExit: false,
  factory: $Onboarding3Route._fromState,
);

mixin $Onboarding3Route on GoRouteData {
  static Onboarding3Route _fromState(GoRouterState state) =>
      const Onboarding3Route();

  @override
  String get location => GoRouteData.$location('3');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $chooseRuleRoute => GoRouteData.$route(
  path: '4',
  hasOverriddenOnExit: false,
  factory: $ChooseRuleRoute._fromState,
);

mixin $ChooseRuleRoute on GoRouteData {
  static ChooseRuleRoute _fromState(GoRouterState state) =>
      const ChooseRuleRoute();

  @override
  String get location => GoRouteData.$location('4');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
