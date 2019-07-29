
import 'package:employee_manager/pages/home_page.dart';
import 'package:employee_manager/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'constant/strints.dart';

import 'package:geolocator/geolocator.dart'; //for geolocator

void main() => runApp(EmployeeManager());

class EmployeeManager extends StatefulWidget {
  @override
  _EmployeeManagerState createState() => _EmployeeManagerState();
}

class _EmployeeManagerState extends State<EmployeeManager> {
  Widget page;

  bool isLogged = false;

  _logedInStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // print(prefs.getBool(kLoggedInKey));
    if (prefs.getBool(kLoggedInKey) != null) {
      if (prefs.getBool(kLoggedInKey) == true) {
        setState(() {
          isLogged = true;
        });
      }
    }
  }

  _getLocation() async {
    Position position = await Geolocator()
                          .getCurrentPosition(desiredAccuracy:LocationAccuracy.high);

    Geolocator geolocator = Geolocator()..forceAndroidLocationManager = true;
    GeolocationStatus geolocationStatus  = await geolocator.checkGeolocationPermissionStatus();

    print(geolocationStatus);

    print(position);
    print(position.timestamp);
  }

  @override
  void initState() {
    super.initState();
    _logedInStatus();
    _getLocation();
  }

  @override
  Widget build(BuildContext context) {
    

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
