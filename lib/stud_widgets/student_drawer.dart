import 'package:flutter/material.dart';
import 'package:joins/student/login/view/login_page.dart';
//import 'package:joins/login/view/login_page.dart';

class StudentDrawer extends StatelessWidget {
  const StudentDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      child: ListView(
        children: [
          DrawerHeader(
            child: Image(
              image: AssetImage('Assets/Images/logo.jpeg'),
            ),
          ),
          Container(
            //color: Color.fromARGB(255, 230, 164, 186),
            color: Colors.white,
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    child: Image.asset(
                      'Assets/Images/fatima.jfif',
                    ),
                    radius: 30,
                  ),
                  trailing: Text(
                    'Fathima Zahra',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                  title: Text('Language'),
                ),
                ListTile(
                  leading: Icon(Icons.feedback),
                  title: Text('Feedback'),
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => LoginPage()));
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
    );
  }
}
