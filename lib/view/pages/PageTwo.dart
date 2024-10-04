// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 155.r,
          backgroundImage: const AssetImage('assets/images/tracking3.png'),
        ),
        Padding(
          padding:  EdgeInsets.only(top: 28.h),
          child: Text(
            "Dedicated",
            style: TextStyle(
              color: const Color(0xff423B3B),
              fontSize: 19.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Text(
          "Safety Center",
          style: TextStyle(
            color: const Color(0xff423B3B),
            fontSize: 19.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 15.h),

        Text(
          "24X7 self serve feature and SOS for",
          style: TextStyle(
            color: const Color.fromARGB(255, 221, 208, 208),
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          "emergency support",
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
