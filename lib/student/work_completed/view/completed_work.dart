import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:joins/stud_widgets/navigation_bottom.dart';
import 'package:joins/stud_widgets/notification_hometile.dart';

class CompleteAssignPage extends StatefulWidget {
  const CompleteAssignPage({super.key});

  @override
  State<CompleteAssignPage> createState() => _CompleteAssignPageState();
}

class _CompleteAssignPageState extends State<CompleteAssignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 188, 112, 105),
        elevation: 0.0,
        title: const Text("Completed Assignmets"),
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
