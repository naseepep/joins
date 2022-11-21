import 'package:flutter/material.dart';
import 'package:joins/parent/notication/view/notification.dart';

import 'package:joins/parent_widgets/carousel.dart';
import 'package:joins/parent_widgets/drawer.dart';
import 'package:joins/parent_widgets/navigation_parent.dart';
import 'package:joins/parent_widgets/notification_hometile.dart';
import 'package:joins/parent_widgets/piechart.dart';

//import 'package:joins/widgets/stud_widgets/student_drawer.dart';
//import 'package:joins/widgets/drawer.dart';

class ParentHome extends StatefulWidget {
  const ParentHome({super.key});
//drawer_ data;
  @override
  State<ParentHome> createState() => _ParentHomeState();
}

class _ParentHomeState extends State<ParentHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: widget.data,

      drawer: drawer1(),
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
                        builder: (context) => NotificationPage()));
              },
              icon: Icon(Icons.notifications)),
        ],
      ),
      bottomNavigationBar: navigation_bottom1(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              height: 200,
              child: CarouselPage1(),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 300,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Attendence',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PieParent(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Notifications',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 350,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return NotificationList1();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
