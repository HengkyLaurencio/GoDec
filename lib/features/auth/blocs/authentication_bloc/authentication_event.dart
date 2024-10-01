part of 'authentication_bloc.dart';

sealed class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

class AppStarted extends AuthenticationEvent {}

class UserLoggedIn extends AuthenticationEvent {
  final MyUser user;

  const UserLoggedIn(this.user);

  @override
  List<Object> get props => [user];
}

class UserLoggedOut extends AuthenticationEvent {}
