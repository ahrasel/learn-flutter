import 'package:flutter/material.dart';

void main() => runApp(EmployeeManager());

class EmployeeManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        body: Text('Employee Manager'),
      ),
    );
  }
}
