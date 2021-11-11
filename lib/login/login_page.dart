import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  static Route route() {
    return MaterialPageRoute(builder: (_) => LoginPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login'),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(child: Text('Login Page en construccion'),), // Bloc Provider...
      ),
    );
  }
}