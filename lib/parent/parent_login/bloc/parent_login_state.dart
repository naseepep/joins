part of 'parent_login_bloc.dart';

@immutable
abstract class ParentLoginState {}

class ParentLoginInitial extends ParentLoginState {}


class LoginSuccess extends ParentLoginState {}

class LoginFailed extends ParentLoginState {

  String error_msg;
  LoginFailed({required this.error_msg});

}
