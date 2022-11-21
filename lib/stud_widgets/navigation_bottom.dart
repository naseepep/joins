import 'package:flutter/material.dart';
import 'package:joins/student/assignment/view/assignment.dart';
import 'package:joins/student/groups/view/groups.dart';
import 'package:joins/student/planner/view/planner.dart';
import 'package:joins/student/stud_home/view/stud_home.dart';
//import 'package:joins/student/view/stud_home.dart';

class navigation_bottom extends StatelessWidget {
  const navigation_bottom({
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
                MaterialPageRoute(builder: (context) => const StudentHome()),
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PlannerPage()),
              );
            },
            child: const Icon(
              Icons.calendar_month_outlined,
              color: Colors.white,
            ),
          ),
          label: "Planner",
        ),
        NavigationDestination(
          icon: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AssigmentPage()),
              );
            },
            child: const Icon(
              Icons.assignment,
              color: Colors.white,
            ),
          ),
          label: "Assignments",
        ),
       
        NavigationDestination(
          icon: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const GroupPage()),
              );
            },
            child: Icon(
              Icons.group,
              color: Colors.white,
            ),
          ),
          label: "Group",
        ),
          
      ],
    );
  }
}
