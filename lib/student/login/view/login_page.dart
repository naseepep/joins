import 'package:flutter/material.dart';
import 'package:joins/routes/route_constants.dart';
import 'package:joins/student/login/bloc/login_stud_bloc.dart';
import 'package:joins/student/login/repository/login_repo.dart';

import 'package:joins/student/signup/view/signup_page.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final auth_bloc = LoginStudBloc();
  // final email = TextEditingController(text: '');
  //password = TextEditingController(text: '');
  TextEditingController _email = TextEditingController(),
      _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => auth_bloc,
      child: BlocListener<LoginStudBloc, LoginStudState>(
        listener: (context, state) {
          if (state is LoginSuccess) {
            Navigator.pushReplacementNamed(
              context,
              RouteConstants.stud_dashboard,
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('invalid email or password'),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            margin: EdgeInsets.only(top: 150, left: 30),
            //color: Colors.white,
            height: 520,
            width: 350,
            decoration: const BoxDecoration(
              // color: Color.fromARGB(255, 230, 164, 186),
              color: Colors.white,
              // border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: ListView(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 280),
                  child: Icon(
                    Icons.mail,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _email,
                    decoration: InputDecoration(
                      hintText: 'email',
                      contentPadding: EdgeInsets.fromLTRB(7, 0, 7, 0),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 280),
                  child: Icon(
                    Icons.lock_outline_rounded,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _password,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      contentPadding: EdgeInsets.fromLTRB(7, 0, 7, 0),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                // const SizedBox(
                // height: 3,
                // ),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    const Text(
                      "Remember Me",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
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
                        auth_bloc.add(StudentLoginEvent(
                            email: _email.text, password: _password.text));
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ),
                TextButton(
                    onPressed: () {}, child: const Text(" Forgot Password ?")),
                const Center(child: Text('----------OR-----------')),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Row(
                    children: [
                      const Text('Need an account ?'),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SignUp(),
                          ));
                        },
                        child: const Text('SIGN UP'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
