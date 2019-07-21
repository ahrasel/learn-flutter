import 'package:employee_manager/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(EmployeeManager());

class EmployeeManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


