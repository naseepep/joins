part of 'login_stud_bloc.dart';

@immutable
abstract class LoginStudEvent {}

class StudentLoginEvent  extends LoginStudEvent{
  String email;
  String password;

  StudentLoginEvent({required this.email, required this.password});
}
