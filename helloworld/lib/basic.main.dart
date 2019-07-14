import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello world App'),
          backgroundColor: Colors.deepOrange,
          actions: <Widget>[
            // Icon(Icons.ac_unit),
            IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.search,
                color: Colors.white
                ),
            ),
            IconButton(
              icon: Icon(
                Icons.access_alarm,
                color: Colors.white
                ),
            ),
            IconButton(
              icon: Icon(
                Icons.ac_unit,
                color: Colors.white
                ),
            ),
          ],
        ),
      drawer: Drawer(),
       bottomNavigationBar: BottomNavigationBar(
        // currentIndex: 0,
        // selectedItemColor: Colors.red,
        // onTap: (int index) {
        //   // setState(() {
        //   //   //change selected index
        //   // });
        // },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.pages),
            title: Text('All')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pages),
            title: Text('All')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pages),
            title: Text('All')
          ),
        ],
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
          ],
        ),
      ),
      ),
    );
  }
}
