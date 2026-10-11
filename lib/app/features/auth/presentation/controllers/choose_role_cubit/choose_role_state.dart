part of 'choose_role_cubit.dart';

sealed class ChooseRoleState {
  final bool? isAdmin;
  new({required this.isAdmin});
}

final class ChooseRoleInitial extends ChooseRoleState {
  new({required super.isAdmin});
}

final class ChooseRoleAdmin extends ChooseRoleState {
  new({required super.isAdmin});
}

final class ChooseRolePatient extends ChooseRoleState {
  new({required super.isAdmin});
}
