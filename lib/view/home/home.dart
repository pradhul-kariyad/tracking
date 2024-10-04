// ignore_for_file: sort_child_properties_last, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tracking/view/home/homeMap/homeMap.dart';
import 'package:tracking/view/screens/spashScreen/spashSreen.dart';
import 'package:tracking/view/screens/trackingMap/trackingMap.dart';
import 'package:tracking/view/searchLocation/searchLocation.dart';

class Home extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        backgroundColor: const Color(0xff383434),
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 190.h,
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 77.h),
                    child: Container(
                      height: 50.h,
                      width: 55.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.sp),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/trackingIcon.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Tracking",
                    style: TextStyle(
                      fontSize: 22.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        width: 256.w,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 100.h,
                  color: const Color(0xff383434),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 43.h, left: 5.w),
                  child: IconButton(
                    onPressed: () {
                      _scaffoldKey.currentState!.openDrawer();
                    },
                    icon: Icon(Icons.menu),
                    iconSize: 28.sp,
                    color: const Color(0xffF5F5F5),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 52.h, left: 57.w),
                  child: Text(
                    "Tracking",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: const Color(0xffF5F5F5),
                      fontSize: 18.sp,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 100.h),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 590.h,
                    child: const HomeMap(),
                  ),
                ),
                // Container(
                //   margin: EdgeInsets.only(top: 459.h),
                //   height: 231.h,
                //   decoration: BoxDecoration(
                //     color: const Color(0xff383434),
                //     borderRadius: BorderRadius.only(
                //       topLeft: Radius.circular(29.sp),
                //       topRight: Radius.circular(29.sp),
                //     ),
                //   ),
                // ),
                // Positioned(
                //   left: 20.w,
                //   bottom: 188.h,
                //   child: Text(
                //     "Suggested Destinations",
                //     style: TextStyle(
                //       color: const Color(0xffF5F5F5),
                //       fontSize: 16.sp,
                //     ),
                //   ),
                // ),
                // Positioned(
                //   bottom: 100.h,
                //   left: 20.w,
                //   child: Container(
                //     width: 320.w,
                //     height: 70.h,
                //     decoration: BoxDecoration(
                //       color: const Color(0xffF5F5F5),
                //       borderRadius: BorderRadius.circular(25.sp),
                //     ),
                //     child: Row(
                //       children: [
                //         IconButton(
                //           onPressed: () {},
                //           icon: const Icon(
                //             Icons.location_on_rounded,
                //             color: Color(0xff4ECB71),
                //           ),
                //         ),
                //         Padding(
                //           padding: EdgeInsets.only(top: 19.h),
                //           child: Column(
                //             children: [
                //               Text(
                //                 "Thalassery",
                //                 style: TextStyle(
                //                   color: Colors.black,
                //                   fontSize: 13.sp,
                //                   fontWeight: FontWeight.w500,
                //                 ),
                //               ),
                //               Text(
                //                 "Kerala, India",
                //                 style: TextStyle(
                //                   color: const Color(0xff8B8B8B),
                //                   fontSize: 11.sp,
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ),
                //         Padding(
                //           padding: EdgeInsets.only(left: 150.w),
                //           child: IconButton(
                //             onPressed: () {},
                //             icon: Icon(
                //               Icons.arrow_forward_ios_sharp,
                //               color: Colors.black,
                //               size: 16.sp,
                //             ),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                Padding(
                  padding: EdgeInsets.only(top: 150.h),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return SearchLocation();
                            },
                          ),
                        );
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
                                // weight: 2.sp,
                                color: const Color(0xffFFEA00),
                              ),
                            ),
                            Text(
                              "Where are you going?",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffFFEA00)),
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
