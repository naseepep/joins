import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'login_stud_event.dart';
part 'login_stud_state.dart';

class LoginStudBloc extends Bloc<LoginStudEvent, LoginStudState> {
  LoginStudBloc() : super(LoginStudInitial()) {
    on<LoginStudEvent>((event, emit) async {
      if (event is StudentLoginEvent) {
        print(event.email);
        print(event.password);
        print(event);
        final FirebaseAuth auth = FirebaseAuth.instance;
        try {
          await auth.signInWithEmailAndPassword(
              email: event.email, password: event.password);
          emit(LoginSuccess());

        } on FirebaseAuthException catch (e) {
          print('000000000000000000000000000000000000000000');
          print(e.code);
          emit(LoginFailed(error_msg: e.code));
        }
      }
    });
  }
}
