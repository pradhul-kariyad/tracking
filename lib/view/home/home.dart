// ignore_for_file: unused_import, unnecessary_string_escapes, use_full_hex_values_for_flutter_colors, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tracking/view/screens/spashScreen/firstSreen.dart';
import 'package:tracking/view/searchLocation/searchLocation.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 148.h,
                  color: const Color(0xff383434),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 38.h, left: 5.w),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu),
                    iconSize: 28.sp,
                    color: Color(0xffF5F5F5),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 45.h, left: 60.w),
                  child: Text(
                    "namma\nyatri",
                    style: TextStyle(color: Color(0xffF5F5F5), fontSize: 16.sp),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 222, top: 60.h),
                  width: 124.w,
                  height: 22.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.sp),
                    color: Color(0xff485769),
                  ),
                  child: Center(
                    child: Text(
                      "Have a Referral?",
                      style:
                          TextStyle(color: Color(0xff006FFF), fontSize: 13.sp),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 148.h),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 545.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/mapThalassery.png'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 462.h),
                  height: 231.h,
                  decoration: BoxDecoration(
                      color: Color(0xff383434),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(29.sp),
                          topRight: Radius.circular(29.sp))),
                ),
                Positioned(
                  left: 20.w,
                  bottom: 188.h,
                  child: Text(
                    "Suggested Destinations",
                    style: TextStyle(color: Color(0xffF5F5F5), fontSize: 16.sp),
                  ),
                ),
                Positioned(
                  bottom: 100.h,
                  left: 20.w,
                  child: Container(
                    width: 320.w,
                    height: 70.h,
                    decoration: BoxDecoration(
                        color: Color(0xffF5F5F5),
                        borderRadius: BorderRadius.circular(25.sp)),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.location_on_rounded,
                              color: Color(0xff4ECB71),
                            )),
                        Padding(
                          padding: EdgeInsets.only(top: 19.h),
                          child: Column(
                            children: [
                              Text(
                                "Thalassery",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Kerala, India",
                                style: TextStyle(
                                    color: Color(0xff8B8B8B), fontSize: 11.sp),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 150.w),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward_ios_sharp,
                                color: Colors.black,
                                size: 16.sp,
                                weight: 30.sp,
                              )),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 160.h),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        print("Continue");
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SearchLocation();
                        }));
                      },
                      child: Container(
                        width: 320.w,
                        height: 44.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.sp),
                          color: const Color(0xff423B3B),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20.w, right: 3.w),
                              child: Icon(
                                Icons.search_rounded,
                                size: 20.sp,
                                color: Color(0xffFFEA00),
                              ),
                            ),
                            Text(
                              "Where are you going?",
                              style: TextStyle(color: const Color(0xffFFEA00)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
