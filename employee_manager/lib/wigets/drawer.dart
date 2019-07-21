import 'package:employee_manager/constant/strints.dart';
import 'package:employee_manager/pages/about_page.dart';
import 'package:employee_manager/pages/add_employee.dart';
import 'package:flutter/material.dart';


enum Menu { NEW, ALL, ABOUT }

class AppDrawer extends StatelessWidget {
  _onDraweritemClicked(BuildContext context, Menu menu) {
    Widget page;

    if (menu == Menu.NEW) {
      page = AddEmployee();
    } else if (menu == Menu.ABOUT) {
      page = AboutPage();
    } else if (menu == Menu.ALL) {
      Navigator.pop(context);
      return;
      // page = HomePage();
    }
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  _customDrawerItem(String text, IconData icon, Function onTap) {
    return InkWell(
      splashColor: Colors.blue,
      onTap: onTap,
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.yellow,
        ),
        title: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      semanticLabel: 'hello',
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomLeft,
          colors: [
            Colors.blue[900],
            Colors.deepOrange,
          ],
        )),
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text('ahrasel95@gmail.com'),
              accountName: Text('AH Rasel'),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(kHeaderback), fit: BoxFit.fill)),
              currentAccountPicture: GestureDetector(
                onTap: () {
                  print('This Is profile Picture');
                },
                child: CircleAvatar(
                  backgroundImage: NetworkImage(kProfilepic),
                ),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage(kProfilepic),
                ),
              ],
            ),
            _customDrawerItem('Add Employee', FontAwesomeIcons.plus, () {
              _onDraweritemClicked(context, Menu.NEW);
            }),
            _customDrawerItem('All Employee', FontAwesomeIcons.list, () {
              _onDraweritemClicked(context, Menu.ALL);
            }),
            Divider(),
            _customDrawerItem('About', FontAwesomeIcons.infoCircle, () {
              _onDraweritemClicked(context, Menu.ABOUT);
            }),
          ],
        ),
      ),
    );
  }
}
