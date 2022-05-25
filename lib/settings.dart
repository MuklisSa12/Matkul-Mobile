import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                title: Text("Create Account", style: TextStyle(fontSize: 14),),
                trailing: Icon(Icons.arrow_right),
                isThreeLine: false,

              ),
            ),
            Card(
              child: ListTile(
                title: Text("Screen Mode",style: TextStyle(fontSize: 14)),
                trailing: Icon(Icons.arrow_right),
                isThreeLine: false,

              ),
            ),
            Card(
              child: ListTile(
                title: Text("Activitaes ",style: TextStyle(fontSize: 14)),
                trailing: Icon(Icons.arrow_right),
                isThreeLine: false,
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Bahasa",style: TextStyle(fontSize: 14)),
                trailing: Icon(Icons.arrow_right),
                isThreeLine: false,
              ),
            ),
          ],
        )
    );
  }
}
