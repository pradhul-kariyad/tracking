// ignore_for_file: avoid_print, no_leading_underscores_for_local_identifiers, use_build_context_synchronously, unused_import, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import for TextInputFormatter
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tracking/view/auth/stepOne.dart';
import 'package:tracking/view/auth/stepThree.dart';

class StepTow extends StatefulWidget {
  const StepTow({super.key});

  @override
  _StepTowState createState() => _StepTowState();
}

class _StepTowState extends State<StepTow> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 248, 248),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      color: const Color(0xff383434),
                      height: 148.h,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 50.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const StepOne();
                                  }));
                                },
                                icon: const Icon(
                                  Icons.chevron_left_sharp,
                                  size: 30,
                                  color: Color(0xffF8F8F8),
                                ),
                              ),
                              Container(
                                width: 75.w,
                                height: 1.5.h,
                                color: const Color(0xffF8F8F8),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15.w),
                                width: 75.w,
                                height: 1.5.h,
                                color: const Color(0xffF8F8F8),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15.w, right: 8.w),
                                width: 75.w,
                                height: 1.5.h,
                                color: const Color(0xff747474),
                              ),
                              Text(
                                "Step 2/3",
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  color: const Color(0xffF8F8F8),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 21.w, top: 8.h),
                            child: Text(
                              "Got an OTP?",
                              style: TextStyle(
                                color: const Color(0xffF8F8F8),
                                fontSize: 17.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 21.w, top: 20.h),
                      child: Text(
                        "Login using the OTP sent to +91 7592993703",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: const Color(0xff747474),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 10.w, top: 11.h, right: 21.w),
                      child: TextFormField(
                        controller: _otpController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(4),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                          hintText: 'Enter 4 digit OTP',
                          hintStyle: const TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color(0xff747474),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14.sp),
                            borderSide: const BorderSide(color: Colors.black12),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14.sp),
                            borderSide: const BorderSide(color: Colors.black12),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter OTP';
                          } else if (value.length != 4) {
                            return 'OTP should be 4 digits';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.w, top: 10.h),
                      child: Row(
                        children: [
                          Text(
                            "Resend",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationColor: const Color(0xff006FFF),
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                              color: const Color(0xff006FFF),
                            ),
                          ),
                          SizedBox(width: 3.w),
                          Text(
                            "in 27 s",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                              color: const Color(0xff006FFF),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: InkWell(
              onTap: () async {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const StepThree();
                  }));
                } else {
                  print("Validation failed");
                }
              },
              child: Container(
                width: 320.w,
                height: 44.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9.sp),
                  color: const Color(0xff423B3B),
                ),
                child: const Center(
                  child: Text(
                    "Continue",
                    style: TextStyle(color: Color(0xffFFEA00)),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
