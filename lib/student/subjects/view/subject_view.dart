

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:getwidget/getwidget.dart';
import 'package:joins/student/assignment/view/assignment.dart';
import 'package:joins/student/work_completed/view/completed_work.dart';
import 'package:joins/stud_widgets/navigation_bottom.dart';

class SubjectView extends StatefulWidget {
  const SubjectView({super.key});

  @override
  State<SubjectView> createState() => _SubjectViewState();
}

class _SubjectViewState extends State<SubjectView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 188, 112, 105),
        elevation: 0.0,
        title: const Text("Subject"),
      ),
      bottomNavigationBar: navigation_bottom(),
      body:Column(
        children: [
          ListTile(
            leading: Image(image: AssetImage('Assets/Images/logo.jpeg')),
            title: Text('Overdue'),
            trailing: Icon(Icons.navigate_next),
            contentPadding: EdgeInsets.all(8.0),
            shape: RoundedRectangleBorder(side: BorderSide(width: 1.0,color: Colors.black)),
            
            
            ),
            ListTile(
        leading: Image(image: AssetImage('Assets/Images/logo.jpeg')),
        title: Text('Returned'),
        trailing: IconButton( onPressed:() {
          Navigator.push(context, MaterialPageRoute(builder: (context) => AssigmentPage()));
        } ,icon:Icon(Icons.navigate_next)),
        contentPadding: EdgeInsets.all(8.0),
        shape: RoundedRectangleBorder(side: BorderSide(width: 1.0,color: Colors.black)),
        
        
        ),
        ListTile(
        leading: Image(image: AssetImage('Assets/Images/logo.jpeg')),
        title: Text('Completed'),
        trailing: IconButton( onPressed:() {
          Navigator.push(context, MaterialPageRoute(builder: (context) => CompleteAssignPage()));
        } ,icon:Icon(Icons.navigate_next)),        contentPadding: EdgeInsets.all(8.0),
        shape: RoundedRectangleBorder(side: BorderSide(width: 1.0,color: Colors.black)),
        
        
        ),
        ],
      ),
        
      );

// GFListTile(
//  avatar:Image.asset('Assets/Images/logo.jpeg',width:60,height:60),
//    titleText:'Overdue',
  
//   icon: Icon(Icons.not_started,color:Colors.red),
  
//   padding:EdgeInsets.zero,
//   margin:EdgeInsets.zero
// ),

 
    
  }
}