import 'package:employee_manager/helpers/color_converter.dart';
import 'package:employee_manager/models/db_context.dart';
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
  var _employees = [];

  _getEmployeeFormDb() async {
    var dbContext = DbContext();
    var employees =await dbContext.getAllEmployees();

    if(employees != null){
      setState(() {
        _employees = employees;
      });
    }else{
      _employees = [];
    }

    print(_employees.length);
    // print(_employees[1]['name']);    
  }

  @override
  void initState() {
    super.initState();
    _getEmployeeFormDb();
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
        child: _employees.length > 0  ?
          EmployeeCard(employees: _employees) :
          Center(
            child: Text('No Employee Found', style: TextStyle(
                color: Colors.amber,
                fontSize: 24.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
      ),
    );
  }
}
