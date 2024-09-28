// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:tracking/view/auth/mobileNumber.dart';
import 'package:tracking/view/home/home.dart';
import 'package:tracking/view/screens/spashScreen/firstSreen.dart';
import 'package:tracking/view/screens/spashScreen/secondSreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
