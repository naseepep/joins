import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'parent_login_event.dart';
part 'parent_login_state.dart';

class ParentLoginBloc extends Bloc<ParentLoginEvent, ParentLoginState> {
  ParentLoginBloc() : super(ParentLoginInitial()) {
    on<ParentLoginEvent>((event, emit)async{
      if (event is LoginParentEvent) {
        print(event.email);
        print(event.password);
        print(event);
        final FirebaseAuth auth = FirebaseAuth.instance;
        try {
          await auth.signInWithEmailAndPassword(
              email: event.email, password: event.password);
          emit(LoginSuccess());
          print('000000000000000000000000000000000000000000111111111');

        } on FirebaseAuthException catch (e) {
          print('000000000000000000000000000000000000000000');
          print(e.code);
          emit(LoginFailed(error_msg: e.code));
        }
      }
    });
  }
}