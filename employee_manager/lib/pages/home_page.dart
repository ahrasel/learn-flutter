import 'package:employee_manager/constants/strings.dart';
import 'package:employee_manager/widgets/app_drawer.dart';
import 'package:employee_manager/widgets/common_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
// GestureDetector _circleAvater(String url) {
//     return GestureDetector(
//       onTap: () {
//         print('Click on cirlce avatr');
//       },
//       child: CircleAvatar(backgroundImage: NetworkImage(url)),
//     );
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Employee Manager'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info),
            // color: Colors.amber,
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
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrange),
                        ),
                        Text(
                          'Flutter Developer',
                          style: TextStyle(
                              fontSize: 14.0,
                              // fontWeight: FontWeight.bold,
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
