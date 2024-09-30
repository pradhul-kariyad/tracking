// ignore_for_file: unused_import, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tracking/main.dart';
import 'package:tracking/view/screens/spashScreen/secondSreen.dart';
import 'package:tracking/view/screens/spashScreen/thirdSreen.dart';

class Secondsreen extends StatelessWidget {
  const Secondsreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 248, 248),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 130.w, top: 80.h),
                height: 40.h,
                width: 44.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/namma yatri 2.png'),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.w, top: 80.h),
                child: Text(
                  "namma\nyatri",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          CircleAvatar(
            radius: 155,
            backgroundImage: AssetImage('assets/images/namma yatri 3.png'),
          ),
          SizedBox(height: 10.h),
          Text(
            "Dedicated",
            style: TextStyle(color: Color(0xff423B3B), fontSize: 19.sp),
          ),
          Text("Safety Center",
              style: TextStyle(color: Color(0xff423B3B), fontSize: 19.sp)),
          SizedBox(
            height: 15.h,
          ),
          Text(
            "24X7 self serve feature and SOS for",
            style: TextStyle(
                color: Color(0xff423B3B), fontWeight: FontWeight.w300),
          ),
          Text(
            "emergency support",
            style: TextStyle(
                color: Color(0xff423B3B), fontWeight: FontWeight.w300),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 130.w, top: 30.h),
                child: CircleAvatar(
                  backgroundColor: Color(0xffD9D9D9),
                  radius: 7.6.sp,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.w, top: 30.h),
                child: CircleAvatar(
                  backgroundColor: Color(0xff423B3B),
                  radius: 7.6.sp,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.w, top: 30.h),
                child: CircleAvatar(
                  backgroundColor: Color(0xffD9D9D9),
                  radius: 7.6.sp,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.w, top: 30.h),
                child: CircleAvatar(
                  backgroundColor: Color(0xffD9D9D9),
                  radius: 7.6.sp,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 22.h,
          ),
          InkWell(
            onTap: () {
              print("second sreen");
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Thirdsreen();
              }));
            },
            child: Container(
              width: 320.w,
              height: 44.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xff423B3B)),
              child: Center(
                  child: Text(
                "Get Started",
                style: TextStyle(color: Color(0xffFFEA00)),
              )),
            ),
          )
        ],
      ),
    );
  }
}
