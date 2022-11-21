import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:meta/meta.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(SignUpInitial()) {
    
    on<SignUpEvent>((event, emit) async{
      
      if (event is SignUpEventclass) {
        final FirebaseAuth _auth = FirebaseAuth.instance;
       try {
         await _auth.createUserWithEmailAndPassword(email: event.email, password: event.password) ;

         
         emit(Signupsuccess());
       } on FirebaseAuthException catch (e) {
         print(e.code);
         emit(SignupFailed(error_msg: e.code));
       }
      }
    });
  }
}
