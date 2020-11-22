import 'package:accountapp/login.dart';
import 'package:accountapp/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
        routes: {
          '/login': (context) => LogIn(),
          '/signup' : (context) => SignUp()

        }
    );
    
  }
    
}
