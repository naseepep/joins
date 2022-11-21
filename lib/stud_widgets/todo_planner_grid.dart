import 'package:flutter/material.dart';
import 'package:joins/stud_widgets/todo_planner.dart';
//import 'package:medium_app/custom_widgets/todo_tile.dart';

class TodoGridView extends StatefulWidget {
  List<List<String>> todoList;
  TodoGridView({Key? key, required this.todoList}) : super(key: key);

  @override
  _TodoGridViewState createState() => _TodoGridViewState();
}

class _TodoGridViewState extends State<TodoGridView> {

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: widget.todoList.length,
      itemBuilder: (BuildContext context, int index) {
        return TodoTile(title: widget.todoList[index][0], description: widget.todoList[index][1]);
      },
    );
  }
}
