import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:joins/stud_widgets/navigation_bottom.dart';
import 'package:joins/stud_widgets/horizontal_day_list.dart';
import 'package:joins/stud_widgets/todo_planner_grid.dart';

class PlannerPage extends StatefulWidget {
  const PlannerPage({super.key});

  @override
  State<PlannerPage> createState() => _PlannerPageState();
}

class _PlannerPageState extends State<PlannerPage> {
  List<List<String>> todoInformation = [
    ["Hello", "Hello"]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 188, 112, 105),
        elevation: 0.0,
        title: const Text(" My Planner"),
      ),
      bottomNavigationBar: navigation_bottom(),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const HorizontalDayList(),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              child: TodoGridView(todoList: todoInformation),
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  boxShadow: [BoxShadow(blurRadius: 10.0)]),
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   splashColor: Color.fromARGB(255, 188, 112, 105),
      //   shape: const RoundedRectangleBorder(
      //       borderRadius: BorderRadius.all(Radius.circular(12))),
      //   backgroundColor: Color.fromARGB(255, 188, 112, 105),
      //   child: const Icon(
      //     Icons.add,
      //     size: 20,
      //   ),
      // ),
    );
  }
}
