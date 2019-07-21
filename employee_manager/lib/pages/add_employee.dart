import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddEmployee extends StatefulWidget {

  @override
  _AddEmployeeState createState() => _AddEmployeeState();
}

class _AddEmployeeState extends State<AddEmployee> {
  TextEditingController _nameTextController = TextEditingController();

  InputDecoration _customTextFieldDecoration(IconData icon, String hint, String label) {
    return InputDecoration(
        icon: Icon(
          icon,
          color: Colors.white,
        ),
        border: OutlineInputBorder(),
        hintText: hint,
        labelText: label);
  }

  _saveEmployee() async {
    _nameTextController.text = '';
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Employee'),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.blue, Colors.red])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                // height: 100,
                // color: Colors.red,
                child: Text(
                  'Create Employee With Their Information',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: _nameTextController,
                    style: TextStyle(color: Colors.white),
                    autofocus: true,
                    cursorColor: Colors.white,
                    decoration: _customTextFieldDecoration(
                        Icons.people, 'Enter Employee Name', 'Name'),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    autofocus: true,
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.emailAddress,
                    decoration: _customTextFieldDecoration(
                        Icons.email, 'Enter Employee Email', 'Email'),
                  ),
                  SizedBox(height: 10),
                  SizedBox(height: 10),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    autofocus: true,
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.number,
                    // maxLength: 10,
                    decoration: _customTextFieldDecoration(Icons.phone,
                        'Enter Employee PhoneNumber', 'Phone Number'),
                  ),
                  SizedBox(height: 30),
                  RaisedButton(
                    color: Colors.blue,
                    onPressed: () {
                      _saveEmployee();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.people,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Save',
                            style:
                                TextStyle(fontSize: 24.0, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
