import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  var _imageLink =
      'https://images.pexels.com/photos/2610644/pexels-photo-2610644.jpeg?cs=srgb&dl=beautiful-dark-dawn-2610644.jpg&fm=jpg';
  var _backImage =
      'https://images.pexels.com/photos/2610644/pexels-photo-2610644.jpeg?cs=srgb&dl=beautiful-dark-dawn-2610644.jpg&fm=jpg';

  GestureDetector _circleAvater(String url) {
    return GestureDetector(
      onTap: () {
        print('Click on cirlce avatr');
      },
      child: CircleAvatar(backgroundImage: NetworkImage(url)),
    );
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
              currentAccountPicture: _circleAvater(_imageLink),
              otherAccountsPictures: <Widget>[
                _circleAvater(_imageLink),
                _circleAvater(_imageLink),
              ],
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(_backImage), fit: BoxFit.fill),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.list),
              title: Text('All Empoloyee'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.add),
              title: Text('Add Empoloyee'),
            ),
            ListTile(
              onTap: () {
                print('About');
              },
              leading: Icon(Icons.info),
              title: Text('About'),
            )
          ],
        ),
      ),
      body: Container(
        color: Colors.orange[200],
        child: ListView(
          children: <Widget>[
            Card(
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: _circleAvater(_imageLink),
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
