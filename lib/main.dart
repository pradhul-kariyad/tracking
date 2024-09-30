// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tracking/view/auth/stepOne.dart';
import 'package:tracking/view/auth/stepThree.dart';
import 'package:tracking/view/auth/stepTow.dart';
import 'package:tracking/view/home/home.dart';
import 'package:tracking/view/screens/spashScreen/firstSreen.dart';
import 'package:tracking/view/screens/spashScreen/secondSreen.dart';
import 'package:tracking/view/screens/spashScreen/thirdSreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: child,
          );
        },
        child: Firstsreen());
  }
}
