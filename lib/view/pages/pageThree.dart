// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 155.r,
          backgroundImage: const AssetImage('assets/images/page1.png'),
        ),
        Padding(
          padding: EdgeInsets.only(top: 28.h),
          child: Text(
            "Inclusive and accessible,",
            style: TextStyle(
              color: const Color(0xff423B3B),
              fontSize: 19.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Text(
          "for everyone!",
          style: TextStyle(
            color: const Color(0xff423B3B),
            fontSize: 19.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 15.h),

        Text(
          "We strive to provide all our users an even&",
          style: TextStyle(
             color: const Color.fromARGB(255, 221, 208, 208),
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          "equal experience.",
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
