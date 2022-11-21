import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:joins/stud_widgets/navigation_bottom.dart';
import 'package:joins/stud_widgets/notification_hometile.dart';

class NotificationPage1 extends StatefulWidget {
  const NotificationPage1({super.key});

  @override
  State<NotificationPage1> createState() => _NotificationPage1State();
}

class _NotificationPage1State extends State<NotificationPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 188, 112, 105),
        elevation: 0.0,
        title: const Text(" Notifications"),
      ),
      bottomNavigationBar: navigation_bottom(),
      body: Container(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return NotificationList();
          },
        ),
      ),
    );
  }
}
