import 'package:flutter/material.dart';

import 'package:joins/student/assignment/view/assignment.dart';
import 'package:joins/student/notification/view/notification.dart';
import 'package:joins/stud_widgets/carousel.dart';

import 'package:joins/stud_widgets/navigation_bottom.dart';
import 'package:joins/stud_widgets/notification_hometile.dart';
import 'package:joins/stud_widgets/student_drawer.dart';
//import 'package:joins/widgets/drawer.dart';

class StudentHome extends StatefulWidget {
  const StudentHome({super.key});
//drawer_ data;\\\
  @override
  State<StudentHome> createState() => _StudentHomeState();
}

class _StudentHomeState extends State<StudentHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: widget.data,

      drawer: StudentDrawer(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 188, 112, 105),
        title: Text('Home'),
        titleSpacing: 100,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationPage1()));
              },
              icon: Icon(Icons.notifications)),
        ],
      ),
      bottomNavigationBar: navigation_bottom(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              height: 200,
              child: CarouselPage(),
            ),
            Container(
              height: 350,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return NotificationList();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
