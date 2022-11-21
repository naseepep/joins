import 'package:flutter/material.dart';

class NotificationList extends StatefulWidget {
  const NotificationList({super.key});

  @override
  State<NotificationList> createState() => _NotificationListState();
}

class _NotificationListState extends State<NotificationList> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
          side: BorderSide(
        width: 0.5,
        color: Colors.black,
      )),
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
