// ignore_for_file: file_names, avoid_print, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tracking/main.dart';
import 'package:tracking/view/home/home.dart';
import 'package:tracking/view/searchLocation/searchLocation.dart';

class ConfirmLocation extends StatelessWidget {
  const ConfirmLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/mapKannur.png'),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50.h, left: 20.w),
            child: CircleAvatar(
              backgroundColor: Color(0xff383434),
              child: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SearchLocation();
                  }));
                },
                icon: Icon(Icons.arrow_back_ios_new_rounded),
                color: Color(0xffF5F5F5),
                iconSize: 18.sp,
              ),
            ),
          ),
          Positioned(
            bottom: 1.h,
            child: Container(
              height: 232.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25.sp),
                      topLeft: Radius.circular(25.sp))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10.h),
                        child: Text(
                          "Confirm Pickup Location",
                          style: TextStyle(
                              fontSize: 18.sp, color: Color(0xff383434)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 18.h),
                        width: 330.w,
                        height: 65.h,
                        decoration: BoxDecoration(
                            // color: Colors.amber,
                            border: Border.all(
                                width: 1.sp, color: Color(0xffDBDBDB)),
                            borderRadius: BorderRadius.circular(12.sp)),
                        child: Padding(
                          padding: EdgeInsets.only(left: 27.w),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on_rounded,
                                color: Color(0xff4ECB71),
                                size: 20.sp,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10.w, top: 14.h, right: 126.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Kannur",
                                      style: TextStyle(fontSize: 14.sp),
                                    ),
                                    Text(
                                      "670001, India",
                                      style: TextStyle(
                                          fontSize: 11.sp,
                                          color: Color(0xff8B8B8B)),
                                    )
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return SearchLocation();
                                  }));
                                },
                                child: Container(
                                  width: 50.w,
                                  height: 22.h,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1.sp,
                                          color: Color(0xffDBDBDB)),
                                      borderRadius:
                                          BorderRadius.circular(12.sp)),
                                  child: Center(
                                    child: Text(
                                      "Edit",
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: Color(0xff383434)),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  InkWell(
                    onTap: () {
                      print("Continue");

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Home();
                      }));
                    },
                    child: Container(
                      width: 329.w,
                      height: 44.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.sp),
                        color: const Color(0xff423B3B),
                      ),
                      child: Center(
                        child: Text(
                          "Confirm Location",
                          style: TextStyle(color: const Color(0xffFFEA00)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
