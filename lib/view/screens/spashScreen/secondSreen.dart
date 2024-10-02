// ignore_for_file: unused_import, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tracking/view/auth/stepOne.dart';
import 'package:tracking/view/screens/spashScreen/secondSreen.dart';
import 'package:tracking/view/screens/spashScreen/thirdSreen.dart';

class SecondSreen extends StatelessWidget {
  const SecondSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 248, 248),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 80.h, left: 130.w),
                      child: Row(
                        children: [
                          Container(
                            height: 40.h,
                            width: 44.w,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/namma yatri 2.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4.w),
                            child: Text(
                              "namma\nyatri",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16.sp),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40.h),
                    CircleAvatar(
                      radius: 155.r,
                      backgroundImage:
                          const AssetImage('assets/images/namma yatri 3.png'),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      "Dedicated",
                      style: TextStyle(
                        color: const Color(0xff423B3B),
                        fontSize: 19.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "Safety Center",
                      style: TextStyle(
                        color: const Color(0xff423B3B),
                        fontSize: 19.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Text(
                      "24X7 self serve feature and SOS for",
                      style: TextStyle(
                        color: const Color(0xff423B3B),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      "emergency support",
                      style: TextStyle(
                        color: const Color(0xff423B3B),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: const Color(0xffD9D9D9),
                          radius: 7.6.sp,
                        ),
                        SizedBox(width: 10.w),
                        CircleAvatar(
                          backgroundColor: const Color(0xff423B3B),
                          radius: 7.6.sp,
                        ),
                        SizedBox(width: 10.w),
                        CircleAvatar(
                          backgroundColor: const Color(0xffD9D9D9),
                          radius: 7.6.sp,
                        ),
                        SizedBox(width: 10.w),
                        CircleAvatar(
                          backgroundColor: const Color(0xffD9D9D9),
                          radius: 7.6.sp,
                        ),
                      ],
                    ),
                    SizedBox(height: 30.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: InkWell(
                        onTap: () {
                          print("Second screen");
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const ThirdSreen();
                          }));
                        },
                        child: Container(
                          width: double.infinity,
                          height: 44.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.sp),
                            color: const Color(0xff423B3B),
                          ),
                          child: Center(
                            child: Text(
                              "Get Started",
                              style: TextStyle(
                                color: const Color(0xffFFEA00),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
