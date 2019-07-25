import 'package:employee_manager/pages/home_page.dart';
import 'package:employee_manager/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'constant/strints.dart'; // for shared oreferences

void main() => runApp(EmployeeManager());

class EmployeeManager extends StatefulWidget {
  @override
  _EmployeeManagerState createState() => _EmployeeManagerState();
}

class _EmployeeManagerState extends State<EmployeeManager> {
  Widget page = null;

  bool isLogged = false;

  _logedInStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print(prefs.getBool(kLoggedInKey));
    if (prefs.getBool(kLoggedInKey) != null) {
      if (prefs.getBool(kLoggedInKey) == true) {
        setState(() {
          isLogged = true;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    _logedInStatus();

    if (isLogged) {
      page = HomePage();
    } else {
      page = LoginPage();
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        // home: HomePage()
        home: page);
  }
}
