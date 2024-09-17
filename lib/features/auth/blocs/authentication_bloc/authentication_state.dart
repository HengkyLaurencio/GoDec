part of 'authentication_bloc.dart';

sealed class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object> get props => [];
}

final class AuthenticationInitial extends AuthenticationState {}

final class AuthenticationAuthenticated extends AuthenticationState {
  final MyUser user;

  const AuthenticationAuthenticated(this.user);

  @override
  List<Object> get props => [user];
}

final class AuthenticationUnauthenticated extends AuthenticationState {}

final class AuthenticationLoading extends AuthenticationState {}
