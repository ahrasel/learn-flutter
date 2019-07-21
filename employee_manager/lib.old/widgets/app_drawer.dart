import 'package:employee_manager/constants/strings.dart';
import 'package:employee_manager/pages/about_page.dart';
import 'package:employee_manager/pages/home_page.dart';
import 'package:employee_manager/widgets/common_widget.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {


  //  _customMenuItem(String title, IconData icon) {
  //   return ListTile(
  //         onTap: () {
  //            Navigator.push(
  //             context,
  //             MaterialPageRoute(builder: (context) => AboutPage()),
  //           );
  //         },
  //         leading: Icon(icon, color: Colors.amber,),
  //         title: Text(
  //           title,
  //           style: TextStyle(
  //             color: Colors.white
  //           ),),
  //       );
  // }
   _appCustomMenuItem(String title, IconData icon, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: InkWell(
        splashColor: Colors.yellow,
        onTap: () {
           Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
        },
        child: Row(
          children: <Widget>[
            Icon(icon, color: Colors.amber,),
            SizedBox(width: 30,),
            Text(
              title,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white
              ),
              )
          ],
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {

_customMenuItem(String title, IconData icon, Widget page) {
    return ListTile(
          onTap: () {
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page),
            );
          },
          leading: Icon(icon, color: Colors.amber,),
          title: Text(
            title,
            style: TextStyle(
              color: Colors.white
            ),),
        );
  }

    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomLeft,
            colors: [
              Colors.red,
              Colors.blue
            ]
          )
        ),
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text(
                'user@email.com',
                style: TextStyle(color: Colors.amber),
              ),
              accountName: Text('AH RAsel'),
              currentAccountPicture: kCircleAvater(kProfileImage),
              otherAccountsPictures: <Widget>[
                kCircleAvater(kProfileImage),
                kCircleAvater(kProfileImage),
              ],
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(kHeaderBack), fit: BoxFit.fill),
              ),
            ),
            _appCustomMenuItem('All Employee', Icons.list,context),
            // Divider(),
            // _customMenuItem('All Employee', Icons.list),
            _customMenuItem('Add Employee', Icons.add,null),
            Divider(),
            _customMenuItem('About', Icons.info, AboutPage()),
            
          ],
        ),
      ),
    );
  }
}