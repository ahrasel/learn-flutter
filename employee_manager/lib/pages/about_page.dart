import 'package:employee_manager/constants/strings.dart';
import 'package:employee_manager/widgets/app_drawer.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: AppDrawer(),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://thumbs.gfycat.com/SlimDirtyAmphibian-size_restricted.gif'),
                fit: BoxFit.fill)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              kProfileImage,
              width: 100,
              height: 100,
            ),
            Center(
              child: Text(
                'Win Win Service Provider',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),

            RaisedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text('Back'),
            )

          ],
        ),
      ),
    );
  }
}
