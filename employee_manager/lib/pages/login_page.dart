import 'package:employee_manager/constant/strints.dart';
import 'package:employee_manager/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  _userLoggedIn() async {
    var email = _emailController.text;
    var password = _passwordController.text;

    print('Email : $email And Your Password: $password');
    _emailController.text = '';
    _passwordController.text = '';

    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(kLoggedInKey, true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(kLoginBack),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(.5), BlendMode.dstATop))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(kwwspLogin),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: _emailController,
                      autofocus: true,
                      style: TextStyle(color: Colors.blue, fontSize: 18),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Email',
                          fillColor: Colors.deepOrange[200],
                          filled: true,
                          hintStyle: TextStyle(
                              color: Colors.indigo,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _passwordController,
                      autofocus: true,
                      style: TextStyle(color: Colors.blue, fontSize: 18),
                      keyboardType: TextInputType.text,
                      // obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Password',
                          fillColor: Colors.deepOrange[200],
                          filled: true,
                          hintStyle: TextStyle(
                              color: Colors.indigo,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    RaisedButton(
                      onPressed: () {
                        // print('login');
                        _userLoggedIn();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      color: Colors.blue,
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.ac_unit,
                            color: Colors.white,
                          ),
                          Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                            ),
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
      ),
    );
  }
}
