import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:joins/parent/parent_login/views/parent_login.dart';
//import 'package:joins/login/view/login_page.dart';
//import 'package:joins/student/login/view/login_page.dart';

class drawer1 extends StatefulWidget {
  const drawer1({super.key});

  @override
  State<drawer1> createState() => _drawer1State();
}

class _drawer1State extends State<drawer1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: 250,
        child: ListView(
          children: [
            DrawerHeader(
              child: Image(
                image: AssetImage('Assets/Images/logo.jpeg'),
              ),
            ),
            Container(
              color: Colors.lightBlue,
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      child: Image.asset(
                        'Assets/Images/.jfif',
                      ),
                      radius: 30,
                    ),
                    trailing: Text(
                      'Welcome! Parent',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    // subtitle: Text('2-B'),
                  ),
                  ListTile(
                    leading: Icon(Icons.star_border_rounded),
                    title: Text('Rate Us'),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                  ),
                  ListTile(
                    leading: Icon(Icons.child_care_rounded),
                    title: Text('Sibling Link'),
                  ),
                  ListTile(
                    leading: Icon(Icons.app_registration),
                    title: Text('Edit APP Icon'),
                  ),
                  ListTile(
                    leading: Icon(Icons.privacy_tip_outlined),
                    title: Text('Privacy Policy'),
                  ),
                  ListTile(
                    leading: Icon(Icons.language),
                    title: Text(' Apply For TC'),
                  ),
                  ListTile(
                    leading: Icon(Icons.feedback),
                    title: Text('Feedback'),
                  ),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginPage1()));
                      },
                      child: Text(
                        'Log Out',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
