import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        behavior: HitTestBehavior.opaque,
        child: Column(children: <Widget>[
          SafeArea(
            child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  size: 30,
                ),
                padding: EdgeInsets.only(right:350),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(top: 150, left: 30, right: 30),
              child: Column(
                children: <Widget>[
                  Text(
                    'Create Your Account',
                    style: TextStyle(fontSize: 45),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25))),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: 500,
                    height: 55,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Colors.blue,
                      child: Text('Sign Up'),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      elevation: 10,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
