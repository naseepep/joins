
import 'package:flutter/material.dart';
import 'package:joins/home/view/home_page.dart';
import 'package:joins/parent/home/view/parent_home.dart';
import 'package:joins/parent/parent_login/views/parent_login.dart';

import 'package:joins/routes/route_constants.dart';
import 'package:joins/student/login/view/login_page.dart';
import 'package:joins/student/stud_home/view/stud_home.dart';

class app_router {
  Route onGenerateRoute(RouteSettings route) {
    switch (route.name) {
      case RouteConstants.parent_signup:
        return MaterialPageRoute(builder: ((context) => LoginPage1()));
        case RouteConstants.stud_signup:
        return MaterialPageRoute(builder: ((context) => LoginPage()));
      
         case RouteConstants.stud_dashboard:
        return MaterialPageRoute(builder: ((context) => StudentHome()));
        case RouteConstants.parent_dashboard:
        return MaterialPageRoute(builder: ((context) => ParentHome()));
        case RouteConstants.splash_screen:
        return MaterialPageRoute(builder: ((context) => HomePage()));
  
  
      default:
        return MaterialPageRoute(builder: ((context) => LoginPage()));

    }
  }
}
