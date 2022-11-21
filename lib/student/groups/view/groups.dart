import 'package:flutter/material.dart';
import 'package:joins/student/subjects/view/subject_view.dart';
import 'package:joins/stud_widgets/navigation_bottom.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class GroupPage extends StatefulWidget {
  const GroupPage({super.key});

  @override
  State<GroupPage> createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  final List<String> titles = [
    "ENGLISH",
    "MATHS",
    "SCIENCE",
    "HINDI",
    "COMPUTER SCIENCE",
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> images = [
      Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 188, 112, 105),
        elevation: 0.0,
        title: const Text("My Groups"),
      ),
      bottomNavigationBar: navigation_bottom(),
      body: SafeArea(
        child: Expanded(
          child: Container(
            child: VerticalCardPager(
              textStyle:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              titles: titles,
              images: images,
              onPageChanged: (page) {},
              align: ALIGN.CENTER,
              onSelectedItem: (index) {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => SubjectView())));
              },
            ),
          ),
        ),
      ),
    );
  }
}
