// import 'package:animated_splash_screen/animated_splash_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:joins/home/view/home_page.dart';
// import 'package:joins/routes/route_constants.dart';
// import 'package:joins/student/stud_home/view/stud_home.dart';
// //mport 'package:joins/student/view/stud_home.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(Duration(seconds: 15), () {
//       Navigator.pushNamed(context, RouteConstants.splash_screen);
//     });
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.white,
//         body: AnimatedSplashScreen(
//           nextScreen: HomePage(),
//           splashIconSize: 100,
//           splashTransition: SplashTransition.rotationTransition,
//           duration: 36000,
//           splash: Center(
//             child: Image(
//               image: AssetImage(
//                 'Assets/Images/logo.jpeg',
//               ),
//                width: 150,
//                height: 150,
//             ),
//           ),
//               //child: Image(image: AssetImage('Assets/Images/splash1.jpg'))),
//         ));
//   }
// }
