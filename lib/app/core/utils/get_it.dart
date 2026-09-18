import 'package:doctor_hunt/app/features/auth/data/repo/auth_repo.dart';
import 'package:doctor_hunt/app/features/auth/data/repo/auth_repo_imp.dart';
import 'package:doctor_hunt/app/features/auth/data/service/firebase_auth_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerLazySingleton(() => FirebaseAuthService());

  getIt.registerLazySingleton<AuthRepo>(
    () => AuthRepoImp(firebaseAuthService: getIt()),
  );
}
