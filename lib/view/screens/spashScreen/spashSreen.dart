// ignore_for_file: unused_import, avoid_print, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tracking/view/auth/stepOne.dart';
import 'package:tracking/view/pages/PageTwo.dart';
import 'package:tracking/view/pages/pageFour.dart';
import 'package:tracking/view/pages/pageOne.dart';
import 'package:tracking/view/pages/pageThree.dart';

class SpashSreen extends StatelessWidget {
  const SpashSreen({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 80.h, left: 120.w),
                      child: Row(
                        children: [
                          Container(
                            height: 30.h,
                            width: 33.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.sp),
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/trackingIcon.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 9.w),
                            child: Text(
                              "Tracking",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp,
                                color: const Color(0xff423B3B),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40.h),
                    SizedBox(
                      width: double.infinity,
                      height: 400.h,
                      child: PageView(
                        controller: _pageController,
                        children: [
                          PageOne(),
                          PageTwo(),
                          PageThree(),
                          PageFour(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    SmoothPageIndicator(
                        axisDirection: Axis.horizontal,
                        //effect: WormEffect,
                        //effect: SwapEffect,
                        //effect: JumpingDotEffect,verticalOffset: 4,
                        //effect: SlideEffect,
                        effect: WormEffect(
                            // verticalOffset: 4,
                            spacing: 12.sp,
                            dotHeight: 13.h,
                            dotWidth: 15.w,
                            // radius: 20.sp,
                            dotColor: const Color(0xffD9D9D9),
                            activeDotColor: const Color(0xff423B3B)),
                        controller: _pageController,
                        count: 4),
                    SizedBox(height: 30.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: InkWell(
                        onTap: () {
                          print("First screen");
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const StepOne();
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
                                fontWeight: FontWeight.w600,
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
