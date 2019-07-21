import 'package:employee_manager/constant/strints.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EmployeeCard extends StatelessWidget {
  const EmployeeCard({Key key, this.employees});

  final List<String> employees;

  Widget _buildEmployee(BuildContext context, int index) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.red,
                  Colors.white60,
                  ])),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(kProfilepic),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(employees[index],
                      style: TextStyle(
                          color: Colors.pink,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold)),
                  Text('ahrasel95@gmail.com',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 14.0,
                      )),
                ],
              ),
            ),
            IconButton(
              padding: EdgeInsets.only(right: 10.0),
              splashColor: Colors.red,
              icon: Icon(
                FontAwesomeIcons.trash,
                color: Colors.red,
              ),
              onPressed: () {},
              tooltip: 'Remove',
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: employees.length, itemBuilder: _buildEmployee);
  }
}
