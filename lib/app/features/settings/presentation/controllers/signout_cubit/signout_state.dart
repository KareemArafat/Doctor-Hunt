part of 'signout_cubit.dart';

sealed class SignoutState {}

final class SignoutInitial extends SignoutState {}

final class SignoutLoading extends SignoutState {}

final class SignoutSuccess extends SignoutState {}

final class SignoutFailure extends SignoutState {
  final String message;
  new({required this.message});
}
