import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:joins/stud_widgets/navigation_bottom.dart';
import 'package:joins/stud_widgets/notification_hometile.dart';

class AssigmentPage extends StatefulWidget {
  const AssigmentPage({super.key});

  @override
  State<AssigmentPage> createState() => _AssigmentPageState();
}

class _AssigmentPageState extends State<AssigmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 188, 112, 105),
        elevation: 0.0,
        title: const Text(" My Assignments"),
        
   

      ),
      bottomNavigationBar: navigation_bottom(),
      body:Container(
        child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return NotificationList();
                },
              ),
      ) ,
    );
  }
}