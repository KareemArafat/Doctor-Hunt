part of 'choose_role_cubit.dart';

sealed class ChooseRoleState {}

final class ChooseRoleInitial extends ChooseRoleState {}

final class ChooseRoleAdmin extends ChooseRoleState {}

final class ChooseRolePatient extends ChooseRoleState {}
