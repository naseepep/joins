import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:joins/parent/signup/repositary/signup_repo.dart';
import 'package:joins/routes/route_constants.dart';
import 'package:joins/student/login/view/login_page.dart';
import 'package:joins/student/signup/bloc/sign_up_bloc.dart';
import 'package:joins/student/signup/repositary/signup_repo.dart';
//import 'package:joins/login/view/login_page.dart';

class SignUp extends StatefulWidget {
  SignUp({super.key});
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  SignUpBloc signup1 = SignUpBloc();

  final email = TextEditingController(text: '');
  final password = TextEditingController(text: '');
  final lname = TextEditingController(text: "");
  final fname = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => signup1,
      child: BlocListener<SignUpBloc, SignUpState>(
        listener: (context, state) {
          if (state is Signupsuccess) {
            Navigator.pushNamed(context, RouteConstants.stud_signup);
          } else if (state is SignupFailed) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.error_msg)));
          }
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Container(
              //color: Colors.white,
              height: 500,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                // border: Border.all(color: Colors.black),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 35, top: 5),
                    child: Text(
                      "SIGN UP",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 250),
                    child: Text(
                      "FIRST NAME",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: TextField(
                      controller: fname,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(3, 0, 3, 0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(right: 250),
                    child: Text(
                      "LAST NAME",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: TextField(
                      controller: lname,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(3, 0, 3, 0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 280),
                    child: Text(
                      "EMAIL",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: TextField(
                      controller: email,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(3, 0, 3, 0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 250),
                    child: Text(
                      "PASSWORD",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: TextField(
                      controller: password,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(3, 0, 3, 0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),

                  // const SizedBox(
                  // height: 3,
                  // ),

                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 188, 112, 105),
                            minimumSize: const Size.fromHeight(40),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            )),
                        onPressed: () {
                          signup1.add(
                            SignUpEventclass(
                              fname: fname.text,
                              lname: lname.text,
                              email: email.text,
                              password: password.text,
                            ),
                          );
                        },
                        child: const Text(
                          "SIGN UP",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                  ),

                  Center(child: Text('----------OR-----------')),
                  Padding(
                    padding: EdgeInsets.only(left: 50),
                    child: Row(
                      children: [
                        Text('Already a user ?'),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => LoginPage()));
                          },
                          child: Text('LOGIN'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
