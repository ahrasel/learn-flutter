import 'package:employee_manager/constant/strints.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // appBar: AppBar(title: Text(kAboutTitle),),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(kAnimatedPic),
              fit: BoxFit.fill
            )
          ),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Image.network(
                  'http://winwinsp.com/images/logo.png',
                  width: 200.00,
                ),
              ),
              Expanded(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Win-Wiin Service Provider',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      Text(
                        'wwsp@email.com',
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      Text(
                        '+88014256544554',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
