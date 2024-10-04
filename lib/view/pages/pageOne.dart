import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 155.r,
          backgroundImage: const AssetImage('assets/images/tracking2.png'),
        ),
        Padding(
          padding: EdgeInsets.only(top: 28.h),
          child: Text(
            "The fastest ride booking",
            style: TextStyle(
              color: const Color(0xff423B3B),
              fontSize: 19.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Text(
          "app is here!",
          style: TextStyle(
            color: const Color(0xff423B3B),
            fontSize: 19.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 15.h),
        Text(
          "Our speedy booking process means you",
          style: TextStyle(
            color: const Color.fromARGB(255, 221, 208, 208),
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          "get a ride quickly and easily.",
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
