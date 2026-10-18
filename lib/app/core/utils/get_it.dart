import 'package:doctor_hunt/app/features/admin/data/repo/admin_repo.dart';
import 'package:doctor_hunt/app/features/admin/data/repo/admin_repo_imp.dart';
import 'package:doctor_hunt/app/features/admin/data/services/firebase_admin_service.dart';
import 'package:doctor_hunt/app/features/auth/data/repo/auth_repo.dart';
import 'package:doctor_hunt/app/features/auth/data/repo/auth_repo_imp.dart';
import 'package:doctor_hunt/app/features/auth/data/service/firebase_auth_service.dart';
import 'package:doctor_hunt/app/features/home/data/repo/home_repo.dart';
import 'package:doctor_hunt/app/features/home/data/repo/home_repo_imp.dart';
import 'package:doctor_hunt/app/features/home/data/service/firebase_home_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerLazySingleton(() => FirebaseAuthService());
  getIt.registerLazySingleton(() => FirebaseAdminService());
  getIt.registerLazySingleton(() => FirebaseHomeService());

  getIt.registerLazySingleton<AuthRepo>(
    () => AuthRepoImp(firebaseAuthService: getIt()),
  );
  getIt.registerLazySingleton<AdminRepo>(
    () => AdminRepoImp(firebaseAdminService: getIt()),
  );
  getIt.registerLazySingleton<HomeRepo>(
    () => HomeRepoImp(firebaseHomeService: getIt()),
  );
}
