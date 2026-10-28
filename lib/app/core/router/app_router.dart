import 'package:doctor_hunt/app/features/auth/presentation/controllers/login_cubit/login_cubit.dart';
import 'package:doctor_hunt/app/features/auth/presentation/screens/choose_role_page.dart';
import 'package:doctor_hunt/app/features/home/presentation/controller/doctors_by_specialty_cubit/doctors_by_specialty_cubit.dart';
import 'package:doctor_hunt/app/features/home/presentation/controller/popular_doctors_cubit/popular_doctors_cubit.dart';
import 'package:doctor_hunt/app/features/home/presentation/controller/top_rated_doctors_cubit/top_rated_doctors_cubit.dart';
import 'package:doctor_hunt/app/features/home/presentation/screens/see_all_top_rated_doctors_page.dart';
import 'package:doctor_hunt/app/features/home/presentation/screens/specialty_doctors_page.dart';
import 'package:doctor_hunt/app/shared/models/doctor_model.dart';
import 'package:doctor_hunt/app/features/admin/presentation/screens/admin_home_page.dart';
import 'package:doctor_hunt/app/features/admin/presentation/screens/create_doctor_page.dart';
import 'package:doctor_hunt/app/features/admin/presentation/screens/doctor_details_page.dart';
import 'package:doctor_hunt/app/features/admin/presentation/screens/edit_admin_profile_page.dart';
import 'package:doctor_hunt/app/features/admin/presentation/screens/edit_doctor_page.dart';
import 'package:doctor_hunt/app/features/auth/presentation/controllers/choose_role_cubit/choose_role_cubit.dart';
import 'package:doctor_hunt/app/features/auth/presentation/screens/login_page.dart';
import 'package:doctor_hunt/app/features/auth/presentation/screens/signup_page.dart';
import 'package:doctor_hunt/app/features/home/presentation/screens/see_all_popular_doctors_page.dart';
import 'package:doctor_hunt/app/features/main/presentation/screens/main_bottom_bar.dart';
import 'package:doctor_hunt/app/features/main/presentation/screens/onboarding_page.dart';
import 'package:doctor_hunt/app/features/main/presentation/screens/splash_screen.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      title: t.onboarding1Title,
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
      title: t.onboarding2Title,
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
      title: t.onboarding3Title,
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
    return BlocProvider(
      create: (context) => ChooseRoleCubit(),
      child: const ChooseRolePage(),
    );
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
  const LoginRoute({required this.isAdmin});
  final bool isAdmin;
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: LoginPage(isAdmin: isAdmin),
    );
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

@TypedGoRoute<EditAdminProfileRoute>(path: '/editAdminProfile')
class EditAdminProfileRoute extends GoRouteData with $EditAdminProfileRoute {
  const EditAdminProfileRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const EditAdminProfilePage();
  }
}

@TypedGoRoute<CreateDoctorRoute>(path: '/createDoctor')
class CreateDoctorRoute extends GoRouteData with $CreateDoctorRoute {
  const CreateDoctorRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return CreateDoctorPage();
  }
}

@TypedGoRoute<EditDoctorRoute>(path: '/editDoctor')
class EditDoctorRoute extends GoRouteData with $EditDoctorRoute {
  const EditDoctorRoute({required this.$extra});
  final DoctorModel $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditDoctorPage(doctorModel: $extra);
  }
}

@TypedGoRoute<DoctorDetailsRoute>(path: '/doctorDetails')
class DoctorDetailsRoute extends GoRouteData with $DoctorDetailsRoute {
  const DoctorDetailsRoute({required this.$extra});
  final DoctorModel $extra;
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return DoctorDetailsPage(doctorModel: $extra);
  }
}

@TypedGoRoute<HomeRoute>(path: '/home')
class HomeRoute extends GoRouteData with $HomeRoute {
  const HomeRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PopularDoctorsCubit()..getPopularDoctors(),
        ),
        BlocProvider(
          create: (context) => TopRatedDoctorsCubit()..getTopRatedDoctors(),
        ),
      ],
      child: const MainBottomBar(),
    );
  }
}

@TypedGoRoute<SeeAllPopularDoctorsRoute>(path: '/seeAllPopularDoctors')
class SeeAllPopularDoctorsRoute extends GoRouteData
    with $SeeAllPopularDoctorsRoute {
  const SeeAllPopularDoctorsRoute({required this.$extra});
  final PopularDoctorsCubit $extra;
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider.value(value: $extra, child: SeeAllPopularDoctorsPage());
  }
}

@TypedGoRoute<SeeAllTopRatedDoctorsRoute>(path: '/seeAllTopRatedDoctors')
class SeeAllTopRatedDoctorsRoute extends GoRouteData
    with $SeeAllTopRatedDoctorsRoute {
  const SeeAllTopRatedDoctorsRoute({required this.$extra});
  final TopRatedDoctorsCubit $extra;
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider.value(
      value: $extra,
      child: SeeAllTopRatedDoctorsPage(),
    );
  }
}

@TypedGoRoute<SpecialtyDoctorsRoute>(path: '/specialtyDoctors')
class SpecialtyDoctorsRoute extends GoRouteData with $SpecialtyDoctorsRoute {
  const SpecialtyDoctorsRoute({required this.specialty});
  final String specialty;
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) =>
          DoctorsBySpecialtyCubit()
            ..getDoctorsBySpecialty(specialty: specialty),
      child: SpecialtyDoctorsPage(specialty: specialty),
    );
  }
}
