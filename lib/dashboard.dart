import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  String title = 'SingleChildScrollView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(16.0),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                    child: CircleAvatar(
                      radius: 50,backgroundColor: Colors.white,
                      backgroundImage: AssetImage('images/aku.jpeg'),
                    )
                )
              ],
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Mukhlissatul Yusuf", style: TextStyle(fontSize: 14),),
              trailing: Icon(Icons.edit,),
              isThreeLine: false,

            ),
          ),
          Card(
            child: ListTile(
              title: Text("Pria",style: TextStyle(fontSize: 14)),
              trailing: Icon(Icons.edit),
              isThreeLine: false,

            ),
          ),
          Card(
            child: ListTile(
              title: Text("31 December 2000",style: TextStyle(fontSize: 14)),
              trailing: Icon(Icons.edit),
              isThreeLine: false,
            ),
          ),
          Card(
            child: ListTile(
              title: Text("0812449712",style: TextStyle(fontSize: 14)),
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
              title: Text("Jl. Assofa 3 No.1, Jakarta",style: TextStyle(fontSize: 14)),
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
          Card(
            child: ListTile(
              title: Text("2022",style: TextStyle(fontSize: 14)),
              trailing: Icon(Icons.edit),
              isThreeLine: false,
            ),
          ),
        ],
      )
    );
  }
}
