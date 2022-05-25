import 'package:flutter/material.dart';
import 'package:tracer_study/my_header_drawer.dart';
import 'package:tracer_study/privacy_policy.dart';
import 'package:tracer_study/send_feedback.dart';
import 'package:tracer_study/settings.dart';
import 'contacts.dart';
import 'dashboard.dart';
import 'events.dart';
import 'notes.dart';
import 'notifications.dart';


void main() {
  runApp(MyApp());
}
 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: HomePage(),
     );
   }
 }
 
 class HomePage extends StatefulWidget {
   @override
   State<HomePage> createState() => _HomePageState();
 }
 
 class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.profile;
   @override
   Widget build(BuildContext context) {
      var container;
      if (currentPage == DrawerSections.profile) {
        container = ProfilePage();
      } else if (currentPage == DrawerSections.contacts) {
        container = ContactsPage();
      } else if (currentPage == DrawerSections.events) {
        container = EventsPage();
      } else if (currentPage == DrawerSections.notes) {
        container = NotesPage();
      } else if (currentPage == DrawerSections.settings) {
        container = SettingsPage();
      } else if (currentPage == DrawerSections.notifications) {
        container = NotificationsPage();
      } else if (currentPage == DrawerSections.privacy_policy) {
        container = PrivacyPolicyPage();
      } else if (currentPage == DrawerSections.send_feedback) {
        container = SendFeedbackPage();
      }
     return Scaffold(
     appBar: AppBar(
     backgroundColor: Colors.pinkAccent[700],
     title: Text("Tracer Study"),
      ),
      body: container,
       drawer: Drawer(
         child: SingleChildScrollView(
           child: Container(
             child: Column(
               children: [
                 MyHeaderDrawer(),
                 MyDrawerList(),
               ],
             ),
           ),
        ),
       ),
     );
   }

   Widget MyDrawerList(){
     return Container(
       padding: EdgeInsets.only(
         top: 15,
       ),
       child: Column(
         children: [
           menuItem(1, "Profile", Icons.supervised_user_circle_outlined,
               currentPage == DrawerSections.profile ? true : false),
            Divider(),
           menuItem(2, "Survey", Icons.people_alt_outlined,
               currentPage == DrawerSections.contacts ? true : false),
            Divider(),
           menuItem(3, "Notification", Icons.circle_notifications_outlined,
               currentPage == DrawerSections.notifications ? true : false),
            Divider(),
           menuItem(4, "Setting", Icons.settings,
               currentPage == DrawerSections.settings ? true : false),
   ],
       ),
     );
   }

   Widget menuItem(int id, String title, IconData icon, bool selected){
     return Material(
       color: selected ? Colors.grey[300] : Colors.transparent,
       child: InkWell(
         onTap: (){
           Navigator.pop(context);
           setState(() {
             if (id==1){
               currentPage = DrawerSections.profile;
             } else if (id == 2){
               currentPage = DrawerSections.contacts;
             } else if (id == 3){
               currentPage = DrawerSections.notifications;
             } else if (id == 4){
               currentPage = DrawerSections.settings;
             } else if (id == 5){
               currentPage = DrawerSections.events;
             } else if (id == 6){
               currentPage = DrawerSections.notes;
             } else if (id == 7){
               currentPage = DrawerSections.privacy_policy;
             } else if (id == 8){
               currentPage = DrawerSections.send_feedback;
             }
           });
         },
         child: Padding(
           padding: EdgeInsets.all(15.0),
           child: Row(
             children: [
              Expanded(child: Icon(icon,size: 20, color: Colors.black,),),
               Expanded(
                 flex: 2,
                 child: Text(
                   title,
                   style: TextStyle
                     (color: Colors.black,
                     fontSize: 16,
                    ),
                  ),
                 ),
             ],
           ),
         ),
       ),
     );
   }
 }

enum DrawerSections {
  profile,
  contacts,
  events,
  notes,
  settings,
  notifications,
  privacy_policy,
  send_feedback,

}
 