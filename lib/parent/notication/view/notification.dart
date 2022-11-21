import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:joins/parent_widgets/navigation_parent.dart';
//import 'package:joins/widgets/stud_widgets/navigation_bottom.dart';
import 'package:joins/parent_widgets/notification_hometile.dart';


class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 188, 112, 105),
        elevation: 0.0,
        title: const Text(" Notifications"),
      ),
      bottomNavigationBar: navigation_bottom1(),
      body: Container(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return NotificationList1();
          },
        ),
      ),
    );
  }
}
