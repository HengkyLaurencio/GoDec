part of 'sign_up_bloc.dart';

sealed class SignUpState extends Equatable {
  const SignUpState();

  @override
  List<Object> get props => [];
}

final class SignUpInitial extends SignUpState {}

final class SignUpProcess extends SignUpState {}

final class SignUpSuccess extends SignUpState {
  final User user;

  const SignUpSuccess(this.user);

  @override
  List<Object> get props => [user];
}

final class SignUpFailure extends SignUpState {
  final String errorMessage;

  const SignUpFailure(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}
