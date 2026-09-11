import 'package:doctor_hunt/app/features/admin/presentation/screens/admin_home_page.dart';
import 'package:doctor_hunt/app/features/admin/presentation/screens/create_doctor_page.dart';
import 'package:doctor_hunt/app/features/admin/presentation/screens/doctor_details_page.dart';
import 'package:doctor_hunt/app/features/admin/presentation/screens/edit_doctor_page.dart';
import 'package:doctor_hunt/app/features/auth/presentation/screens/admin_login_page.dart';
import 'package:doctor_hunt/app/features/auth/presentation/screens/choose_role_page.dart';
import 'package:doctor_hunt/app/features/auth/presentation/screens/login_page.dart';
import 'package:doctor_hunt/app/features/auth/presentation/screens/signup_page.dart';
import 'package:doctor_hunt/app/features/onboarding/presentation/screens/onboarding_page.dart';
import 'package:doctor_hunt/app/features/splash_screen/presentation/screens/splash_screen.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
part 'app_router.g.dart';

final GoRouter appRouter = GoRouter(routes: $appRoutes);

@TypedGoRoute<SplashRoute>(path: '/')
class SplashRoute extends GoRouteData with $SplashRoute {
  const SplashRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SplashScreen();
  }
}

@TypedGoRoute<Onboarding1Route>(path: '/onboarding1')
class Onboarding1Route extends GoRouteData with $Onboarding1Route {
  const Onboarding1Route();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return OnboardingPage(
      image: AppImages.assetsImagesOnboarding1,
      title: context.t.onboarding1Title,
      onPressed: () => const Onboarding2Route().push(context),
    );
  }
}

@TypedGoRoute<Onboarding2Route>(path: '/onboarding2')
class Onboarding2Route extends GoRouteData with $Onboarding2Route {
  const Onboarding2Route();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return OnboardingPage(
      image: AppImages.assetsImagesOnboarding2,
      title: context.t.onboarding2Title,
      isRight: true,
      onPressed: () => const Onboarding3Route().push(context),
    );
  }
}

@TypedGoRoute<Onboarding3Route>(path: '/onboarding3')
class Onboarding3Route extends GoRouteData with $Onboarding3Route {
  const Onboarding3Route();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return OnboardingPage(
      image: AppImages.assetsImagesOnboarding3,
      title: context.t.onboarding3Title,
      isEnd: true,
      onPressed: () => const ChooseRuleRoute().go(context),
    );
  }
}

@TypedGoRoute<ChooseRuleRoute>(path: '/chooseRule')
class ChooseRuleRoute extends GoRouteData with $ChooseRuleRoute {
  const ChooseRuleRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ChooseRolePage();
  }
}

@TypedGoRoute<SignupRoute>(path: '/signup')
class SignupRoute extends GoRouteData with $SignupRoute {
  const SignupRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SignupPage();
  }
}

@TypedGoRoute<LoginRoute>(path: '/login')
class LoginRoute extends GoRouteData with $LoginRoute {
  const LoginRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoginPage();
  }
}

@TypedGoRoute<AdminLoginRoute>(path: '/adminLogin')
class AdminLoginRoute extends GoRouteData with $AdminLoginRoute {
  const AdminLoginRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AdminLoginPage();
  }
}

@TypedGoRoute<AdminHomeRoute>(path: '/adminHome')
class AdminHomeRoute extends GoRouteData with $AdminHomeRoute {
  const AdminHomeRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AdminHomePage();
  }
}

@TypedGoRoute<CreateDoctorRoute>(path: '/createDoctor')
class CreateDoctorRoute extends GoRouteData with $CreateDoctorRoute {
  const CreateDoctorRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const CreateDoctorPage();
  }
}

@TypedGoRoute<EditDoctorRoute>(path: '/editDoctor')
class EditDoctorRoute extends GoRouteData with $EditDoctorRoute {
  const EditDoctorRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const EditDoctorPage();
  }
}

@TypedGoRoute<DoctorDetailsRoute>(path: '/doctorDetails')
class DoctorDetailsRoute extends GoRouteData with $DoctorDetailsRoute {
  const DoctorDetailsRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const DoctorDetailsPage();
  }
}
