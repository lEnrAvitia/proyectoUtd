import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

// screens

import 'package:proyecto/screens/home.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'DCOPN',
        home: Home(),
    theme: ThemeData(fontFamily: 'OpenSans')
        );
  }
}
