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
  $signupRoute,
  $loginRoute,
  $adminHomeRoute,
  $createDoctorRoute,
  $editDoctorRoute,
  $doctorDetailsRoute,
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
  path: '/onboarding1',
  hasOverriddenOnExit: false,
  factory: $Onboarding1Route._fromState,
);

mixin $Onboarding1Route on GoRouteData {
  static Onboarding1Route _fromState(GoRouterState state) =>
      const Onboarding1Route();

  @override
  String get location => GoRouteData.$location('/onboarding1');

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
  path: '/onboarding2',
  hasOverriddenOnExit: false,
  factory: $Onboarding2Route._fromState,
);

mixin $Onboarding2Route on GoRouteData {
  static Onboarding2Route _fromState(GoRouterState state) =>
      const Onboarding2Route();

  @override
  String get location => GoRouteData.$location('/onboarding2');

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
  path: '/onboarding3',
  hasOverriddenOnExit: false,
  factory: $Onboarding3Route._fromState,
);

mixin $Onboarding3Route on GoRouteData {
  static Onboarding3Route _fromState(GoRouterState state) =>
      const Onboarding3Route();

  @override
  String get location => GoRouteData.$location('/onboarding3');

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
  path: '/chooseRule',
  hasOverriddenOnExit: false,
  factory: $ChooseRuleRoute._fromState,
);

mixin $ChooseRuleRoute on GoRouteData {
  static ChooseRuleRoute _fromState(GoRouterState state) =>
      const ChooseRuleRoute();

  @override
  String get location => GoRouteData.$location('/chooseRule');

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

RouteBase get $signupRoute => GoRouteData.$route(
  path: '/signup',
  hasOverriddenOnExit: false,
  factory: $SignupRoute._fromState,
);

mixin $SignupRoute on GoRouteData {
  static SignupRoute _fromState(GoRouterState state) => const SignupRoute();

  @override
  String get location => GoRouteData.$location('/signup');

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

RouteBase get $loginRoute => GoRouteData.$route(
  path: '/login',
  hasOverriddenOnExit: false,
  factory: $LoginRoute._fromState,
);

mixin $LoginRoute on GoRouteData {
  static LoginRoute _fromState(GoRouterState state) => LoginRoute(
    isAdmin: _$boolConverter(state.uri.queryParameters['is-admin']!),
  );

  LoginRoute get _self => this as LoginRoute;

  @override
  String get location => GoRouteData.$location(
    '/login',
    queryParams: {'is-admin': _self.isAdmin.toString()},
  );

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

bool _$boolConverter(String value) {
  switch (value) {
    case 'true':
      return true;
    case 'false':
      return false;
    default:
      throw UnsupportedError('Cannot convert "$value" into a bool.');
  }
}

RouteBase get $adminHomeRoute => GoRouteData.$route(
  path: '/adminHome',
  hasOverriddenOnExit: false,
  factory: $AdminHomeRoute._fromState,
);

mixin $AdminHomeRoute on GoRouteData {
  static AdminHomeRoute _fromState(GoRouterState state) =>
      const AdminHomeRoute();

  @override
  String get location => GoRouteData.$location('/adminHome');

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

RouteBase get $createDoctorRoute => GoRouteData.$route(
  path: '/createDoctor',
  hasOverriddenOnExit: false,
  factory: $CreateDoctorRoute._fromState,
);

mixin $CreateDoctorRoute on GoRouteData {
  static CreateDoctorRoute _fromState(GoRouterState state) =>
      const CreateDoctorRoute();

  @override
  String get location => GoRouteData.$location('/createDoctor');

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

RouteBase get $editDoctorRoute => GoRouteData.$route(
  path: '/editDoctor',
  hasOverriddenOnExit: false,
  factory: $EditDoctorRoute._fromState,
);

mixin $EditDoctorRoute on GoRouteData {
  static EditDoctorRoute _fromState(GoRouterState state) =>
      const EditDoctorRoute();

  @override
  String get location => GoRouteData.$location('/editDoctor');

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

RouteBase get $doctorDetailsRoute => GoRouteData.$route(
  path: '/doctorDetails',
  hasOverriddenOnExit: false,
  factory: $DoctorDetailsRoute._fromState,
);

mixin $DoctorDetailsRoute on GoRouteData {
  static DoctorDetailsRoute _fromState(GoRouterState state) =>
      const DoctorDetailsRoute();

  @override
  String get location => GoRouteData.$location('/doctorDetails');

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
