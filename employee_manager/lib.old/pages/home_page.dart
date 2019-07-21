import 'package:employee_manager/constants/strings.dart';
import 'package:employee_manager/styles/styles.dart';
import 'package:employee_manager/widgets/app_drawer.dart';
import 'package:employee_manager/widgets/common_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Employee Manager'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              print('this is info icon button');
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      drawer: AppDrawer(),
      body: Container(
        color: Colors.orange[200],
        child: ListView(
          children: <Widget>[
            Card(
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: kCircleAvater(kProfileImage),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'AH Rasel Ahamed',
                          style: myStyle(Colors.red)
                        ),
                        Text(
                          'Flutter Developer',
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.deepOrange[500]),
                        )
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
