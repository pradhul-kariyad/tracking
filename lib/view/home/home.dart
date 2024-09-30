// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tracking/view/screens/spashScreen/firstSreen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                color: const Color(0xff383434),
                height: 148.h,
                child: Column(
                  children: [],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
