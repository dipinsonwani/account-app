import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool showPassword = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Container(
          color: Colors.white,
          child: SafeArea(
            child: Column(children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/signup');
                },
                child: Container(
                  child: Text(
                    'Signup',
                    style: TextStyle(fontSize: 18),
                  ),
                  alignment: Alignment.topRight,
                  padding: EdgeInsets.only(top: 20, right: 30),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 150, left: 30, right: 30),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Log in",
                      style: TextStyle(fontSize: 50, color: Colors.black),
                    ),
                    SizedBox(height: 50),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25))),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: 20),
                    TextField(
                      obscureText: showPassword,
                      decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25)),
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.remove_red_eye,
                              color: showPassword ? Colors.grey : Colors.blue,
                            ),
                            onPressed: () {
                              setState(() {
                                showPassword = !showPassword;
                              });
                            },
                          )),
                    ),
                    SizedBox(height: 50),
                    Container(
                      width: 500,
                      height: 55,
                      child: RaisedButton(
                        onPressed: () {},
                        color: Colors.blue,
                        child: Text('Log in'),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        elevation: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
