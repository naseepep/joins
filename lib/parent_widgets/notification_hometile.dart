import 'package:flutter/material.dart';

class NotificationList1 extends StatefulWidget {
  const NotificationList1({super.key});

  @override
  State<NotificationList1> createState() => _NotificationList1State();
}

class _NotificationList1State extends State<NotificationList1> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Color.fromARGB(255, 156, 149, 149),
      contentPadding: EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
      //     side: BorderSide(
      //   width: 0.5,
      //   color: Colors.black,
      // ),
      borderRadius: BorderRadius.circular(20)
      ),
      selected: true,
      selectedColor: Colors.grey[300],
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          Icons.notifications_active,
          color: Colors.green,
        ),
      ),
      title: TextButton(
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.only(right: 200),
            child: Text('Added a new file'),
          )),
      subtitle: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text(
          'yesterday',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
