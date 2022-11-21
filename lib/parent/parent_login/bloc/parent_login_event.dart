part of 'parent_login_bloc.dart';

@immutable
abstract class ParentLoginEvent {}
class LoginParentEvent  extends ParentLoginEvent{
  String email;
  String password;

  LoginParentEvent({required this.email, required this.password});
}
