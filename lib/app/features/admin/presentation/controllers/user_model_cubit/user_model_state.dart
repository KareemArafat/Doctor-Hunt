part of 'user_model_cubit.dart';

sealed class UserModelState {}

final class UserModelInitial extends UserModelState {}

final class UserModelLoading extends UserModelState {}

final class UserModelSuccess extends UserModelState {}
