import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  String title = 'SingleChildScrollView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                title: Text("Saya mencari di Website maupun Koran", style: TextStyle(fontSize: 14),),
                trailing: Icon(Icons.edit,),
                isThreeLine: false,

              ),
            ),
            Card(
              child: ListTile(
                title: Text("Sekitar 3 dan yang keterima wawacara 1",style: TextStyle(fontSize: 14)),
                trailing: Icon(Icons.edit),
                isThreeLine: false,

              ),
            ),
            Card(
              child: ListTile(
                title: Text("Hanya 1 wawancara",style: TextStyle(fontSize: 14)),
                trailing: Icon(Icons.edit),
                isThreeLine: false,
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Saya bekerja di PT.XYZ sebagai pengembang aplikasi",style: TextStyle(fontSize: 14)),
                trailing: Icon(Icons.edit),
                isThreeLine: false,
              ),
            ),
            Card(
              child: ListTile(
                title: Text("muklis@gmail.com",style: TextStyle(fontSize: 14)),
                trailing: Icon(Icons.edit),
                isThreeLine: false,
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Saya merasa senang karena ini pekerjaan yang saya inginkan",style: TextStyle(fontSize: 14)),
                trailing: Icon(Icons.edit),
                isThreeLine: false,
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Programer, Design UI & UX, Etc",style: TextStyle(fontSize: 14)),
                trailing: Icon(Icons.edit),
                isThreeLine: false,
              ),
            ),
          ],
        )
    );
  }
}
