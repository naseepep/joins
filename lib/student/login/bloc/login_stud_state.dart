part of 'login_stud_bloc.dart';

@immutable
abstract class LoginStudState {}

class LoginStudInitial extends LoginStudState {}

class LoginSuccess extends LoginStudState {}

class LoginFailed extends LoginStudState {

  String error_msg;
  LoginFailed({required this.error_msg});

}
