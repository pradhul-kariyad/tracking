// ignore_for_file: file_names, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tracking/main.dart';
import 'package:tracking/view/screens/spashScreen/fourthScreen.dart';
import 'package:tracking/view/screens/spashScreen/thirdSreen.dart';
import 'package:tracking/view/widgets/dividerWidget/dividerWidget.dart';

class MobileNumber extends StatelessWidget {
  const MobileNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 248, 248),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Color(0xff383434),
              height: 148.h,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Fourthscreen();
                              }));
                            },
                            icon: Icon(
                              Icons.chevron_left_sharp,
                              size: 30,
                              color: Color(0xffF8F8F8),
                            )),
                        Container(
                          width: 77.w,
                          height: 1.5.h,
                          color: Color(0xffF8F8F8),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15.w),
                          width: 77.w,
                          height: 1.5.h,
                          color: Color(0xff747474),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15.w, right: 8.w),
                          width: 77.w,
                          height: 1.5.h,
                          color: Color(0xff747474),
                        ),
                        Text(
                          "Step1/3",
                          style: TextStyle(
                              fontSize: 10.sp, color: Color(0xffF8F8F8)),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 21.w, top: 8.h),
                      child: Text(
                        "Let’s get you trip-ready!",
                        style: TextStyle(
                            color: Color(0xffF8F8F8), fontSize: 17.sp),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Text(
              "Enter your Mobile Number",
              style: TextStyle(fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
