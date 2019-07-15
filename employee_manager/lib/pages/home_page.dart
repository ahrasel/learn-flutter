import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  var _imageLink = 'https://images.pexels.com/photos/2568413/pexels-photo-2568413.jpeg?cs=srgb&dl=attractive-beautiful-beauty-2568413.jpg&fm=jpg';

  CircleAvatar _circleAvater(String url) {
    return CircleAvatar(backgroundImage: NetworkImage(url));
  }

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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text(
                'user@email.com',
                style: TextStyle(color: Colors.amber),
              ),
              accountName: Text('AH RAsel'),
              // currentAccountPicture: Image(
              //   // image: NetworkImage('https://images.pexels.com/photos/2610644/pexels-photo-2610644.jpeg?cs=srgb&dl=beautiful-dark-dawn-2610644.jpg&fm=jpg'),
              //   image: NetworkImage('https://images.pexels.com/photos/1427581/pexels-photo-1427581.jpeg?cs=srgb&dl=castle-daylight-england-1427581.jpg&fm=jpg'),
              // ),
              // currentAccountPicture: CircleAvatar(
              //   backgroundImage: NetworkImage(
              //       'https://images.pexels.com/photos/2568413/pexels-photo-2568413.jpeg?cs=srgb&dl=attractive-beautiful-beauty-2568413.jpg&fm=jpg'),
              // ),
              currentAccountPicture: _circleAvater(_imageLink),
              otherAccountsPictures: <Widget>[
                _circleAvater(_imageLink),
                _circleAvater(_imageLink),
                // CircleAvatar(
                //   backgroundImage: NetworkImage(
                //       'https://images.pexels.com/photos/2568413/pexels-photo-2568413.jpeg?cs=srgb&dl=attractive-beautiful-beauty-2568413.jpg&fm=jpg'),
                // ),
                // CircleAvatar(
                //   backgroundImage: NetworkImage(
                //       'https://images.pexels.com/photos/2568413/pexels-photo-2568413.jpeg?cs=srgb&dl=attractive-beautiful-beauty-2568413.jpg&fm=jpg'),
                // ),
              ],
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://images.pexels.com/photos/2610644/pexels-photo-2610644.jpeg?cs=srgb&dl=beautiful-dark-dawn-2610644.jpg&fm=jpg'),
                      fit: BoxFit.fill
                      ),
                    ),
            )
          ],
        ),
      ),
      body: Text('Employee Manager'),
    );
  }
}