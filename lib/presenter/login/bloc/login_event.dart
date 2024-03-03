part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class LoginUser extends LoginEvent {
  LoginRequest loginRequest;

  LoginUser(this.loginRequest);
}