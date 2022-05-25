import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              leading: Icon(Icons.mark_unread_chat_alt, size: 32,),
              title: Text("Haya mengomentari postingan Anda"),
              subtitle: Text('Lorem ipsum dolor sit amet...... \nsebulan yang lalu'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.mark_unread_chat_alt, size: 32,),
              title: Text("Gunawan mengomentari postingan Anda"),
              subtitle: Text('Lorem ipsum dolor sit amet...... \n2 minggu yang lalu'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.mark_unread_chat_alt, size: 32,),
              title: Text("Candra mengomentari postingan Anda"),
              subtitle: Text('Lorem ipsum dolor sit amet...... \n3 bulan yang lalu'),
            ),
          ),
        ],
      ),
    );
  }
}
