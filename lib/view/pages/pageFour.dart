// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageFour extends StatelessWidget {
  const PageFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 155.r,
          backgroundImage: const AssetImage('assets/images/page2.png'),
        ),
        Padding(
          padding: EdgeInsets.only(top: 28.h),
          child: Text(
            "Be a part of the Open",
            style: TextStyle(
              color: const Color(0xff423B3B),
              fontSize: 19.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Text(
          "Mobility Revolution!",
          style: TextStyle(
            color: const Color(0xff423B3B),
            fontSize: 19.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 15.h),
        Text(
          "Our data and product roadmap are",
          style: TextStyle(
            color: const Color.fromARGB(255, 221, 208, 208),
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          "transparent for all.",
          style: TextStyle(
            color: const Color.fromARGB(255, 221, 208, 208),
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
