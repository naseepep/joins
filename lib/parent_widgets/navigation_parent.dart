import 'package:flutter/material.dart';
import 'package:joins/parent/academic_performance/view/academic.dart';
import 'package:joins/parent/attendance/view/attendence.dart';
//import 'package:joins/parent/views/academic.dart';
//import 'package:joins/parent/views/attendence.dart';
import 'package:joins/parent/fees/view/fees.dart';
import 'package:joins/parent/home/view/parent_home.dart';

class navigation_bottom1 extends StatelessWidget {
  const navigation_bottom1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: const Color.fromARGB(255, 188, 112, 105),
      destinations: [
         NavigationDestination(
          icon: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  ParentHome()),
              );
            },
            child: Icon(
              Icons.home,
              color: Colors.white,
            ),
          ),
          label: "Home",
        ),
        NavigationDestination(
          icon: InkWell(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const AcademicPage()),
              // );
            },
            child: const Icon(
              Icons.calendar_month_outlined,
              color: Colors.white,
            ),
          ),
          label: "Academic Performance",
        ),
        NavigationDestination(
          icon: InkWell(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const FeesPage()),
              // );
            },
            child: const Icon(
              Icons.assignment,
              color: Colors.white,
            ),
          ),
          label: "Fees",
        ),
       
        NavigationDestination(
          icon: InkWell(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const AttendencePage()),
              // );
            },
            child: Icon(
              Icons.group,
              color: Colors.white,
            ),
          ),
          label: "Attendance",
        ),
          
      ],
    );
  }
}
