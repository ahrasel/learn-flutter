import 'package:employee_manager/helpers/color_converter.dart';
import 'package:employee_manager/pages/add_employee.dart';
import 'package:employee_manager/wigets/drawer.dart';
import 'package:employee_manager/wigets/employee_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List<String> _employees = ['Rasel Ahamed', 'Jon Doe'];
  List<String> _employees = [];


  _getEmployeeFormPref() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    _employees = prefs.getStringList('employess');
    print(_employees);
    // print(prefs.getStringList('employess'));

  }

  @override
  void initState() {
    super.initState();
    _getEmployeeFormPref();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text('Manage Employee'),
        backgroundColor: toRGB('2980b9'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddEmployee()),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
      drawer: AppDrawer(),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.blue, Colors.red],
                ),),
        // color: Colors.blue[200],
        child: EmployeeCard(employees: _employees),
      ),
    );
  }
}
