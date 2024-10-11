// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tracking/view/auth/stepOne.dart';
import 'package:tracking/view/home/home.dart';
import 'package:tracking/view/home/locationMap/locationMap.dart';
import 'package:tracking/view/screens/spashScreen/spashSreen.dart';
import 'view/screens/trackingMap/trackingMap.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool userId = prefs.getBool('userId') ?? false;
  // bool userLoggedIn = prefs.getString('mobile_number') != null;
  runApp(MyApp(userId: userId));
}

class MyApp extends StatelessWidget {
  final bool userId;

  const MyApp({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home:
              //  LocationMap(),
              userId ? Home() : const SpashSreen(),
        );
      },
    );
  }
}
