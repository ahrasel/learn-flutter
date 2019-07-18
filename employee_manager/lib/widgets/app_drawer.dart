import 'package:employee_manager/constants/strings.dart';
import 'package:employee_manager/widgets/common_widget.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {



  // GestureDetector _circleAvater(String url) {
  //   return GestureDetector(
  //     onTap: () {
  //       print('Click on cirlce avatr');
  //     },
  //     child: CircleAvatar(backgroundImage: NetworkImage(url)),
  //   );
  // }

   _customMenuItem(String title, IconData icon) {
    return ListTile(
          onTap: () {},
          leading: Icon(icon, color: Colors.amber,),
          title: Text(
            title,
            style: TextStyle(
              color: Colors.white
            ),),
        );
  }
   _appCustomMenuItem(String title, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: InkWell(
        splashColor: Colors.yellow,
        onTap: () {},
        child: Row(
          children: <Widget>[
            Icon(icon, color: Colors.amber,),
            SizedBox(width: 30,),
            Text(
              title,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white
              ),
              )
          ],
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        // color: Colors.deepOrange,
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: NetworkImage(_backImage),
        //     fit: BoxFit.fill
        //   )
        // ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomLeft,
            colors: [
              Colors.red,
              Colors.blue
            ]
          )
        ),
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text(
                'user@email.com',
                style: TextStyle(color: Colors.amber),
              ),
              accountName: Text('AH RAsel'),
              currentAccountPicture: kCircleAvater(kProfileImage),
              otherAccountsPictures: <Widget>[
                kCircleAvater(kProfileImage),
                kCircleAvater(kProfileImage),
              ],
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(kHeaderBack), fit: BoxFit.fill),
              ),
            ),
            _appCustomMenuItem('All Employee', Icons.list),
            // Divider(),
            // _customMenuItem('All Employee', Icons.list),
            _customMenuItem('Add Employee', Icons.add),
            Divider(),
            _customMenuItem('About', Icons.info),
            
          ],
        ),
      ),
    );
  }
}