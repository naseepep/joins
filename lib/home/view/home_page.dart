import 'package:flutter/material.dart';
//import 'package:joins/login/view/login_page.dart';
import 'package:joins/parent/parent_login/views/parent_login.dart';
import 'package:joins/student/login/view/login_page.dart';
//import 'package:joins/parent/views/parent_home.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Align(
        child: Padding(
          padding: const EdgeInsets.only(top: 180),
          child: Container(
            child: Column(
              children: [
                Image(image: AssetImage('Assets/Images/splash1.jpg')),
                // Icon(
                //   Icons.school_rounded,
                //   size: 200,
                //   color: Colors.blueAccent,
                // ),
                Column(
                  children: [
                    // Text('JOINS',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,
                    // color: Colors.blue),),
                    SizedBox(height: 20,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:Color.fromARGB(255, 188, 112, 105),
                          //elevation: 1,
                          //primary:  Color.fromARGB(255, 171, 126, 160),
                          minimumSize: Size(200, 50),
                          side: BorderSide(width: 1,color: Colors.black),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          )),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      child: Text(
                        "Student",
                        style: TextStyle(color: Colors.black, fontSize: 25,),
                      ),
                    ),
                  SizedBox(height: 12,),
                

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      //elevation: 1,
                      backgroundColor: Color.fromARGB(255, 188, 112, 105),
                     // backgroundColor: Color.fromARGB(255, 171, 126, 160),

                      minimumSize: Size(200, 50),
                      side: BorderSide(width: 1,color: Colors.black),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginPage1()));
                  },
                  child: Text(
                    "Parent",
                    style: TextStyle(color: Colors.black, fontSize: 25,),
                  ),
                ),
                SizedBox(height: 12,),
                // ElevatedButton(
                //   style: ElevatedButton.styleFrom(
                //       //elevation: 1,
                //       backgroundColor: Color.fromARGB(255, 188, 112, 105),
                //      // backgroundColor:  Color.fromARGB(255, 171, 126, 160),
                //       minimumSize: Size(200, 50),
                //       side: BorderSide(width: 1,color: Colors.black),
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(30),
                //       )),
                //   onPressed: () {
                //     Navigator.of(context).push(
                //         MaterialPageRoute(builder: (context) => LoginPage()));
                //   },
                //   child: Text(
                //     "Staff",
                //     style: TextStyle(color: Colors.black, fontSize: 25,),
                //   ),
                // ),
                  ],
                ),
              ],
            ),
          ),
        ),
        
        
      ),
    );
  }
}
