// ignore_for_file: no_leading_underscores_for_local_identifiers, avoid_print, library_private_types_in_public_api, use_build_context_synchronously, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tracking/view/auth/stepTow.dart';
import 'package:tracking/view/screens/spashScreen/fourthScreen.dart';

class StepOne extends StatefulWidget {
  const StepOne({super.key});

  @override
  _StepOneState createState() => _StepOneState();
}

class _StepOneState extends State<StepOne> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _numberController =
      TextEditingController(text: '+91');
  final TextEditingController _mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 248, 248),
      body: SingleChildScrollView(
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
                              return const FourthScreen();
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
                          color: const Color(0xff747474),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15.w, right: 8.w),
                          width: 75.w,
                          height: 1.5.h,
                          color: const Color(0xff747474),
                        ),
                        Text(
                          "Step 1/3",
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
                        "Let’s get you trip-ready!",
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
                  "Enter your Mobile Number",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    color: const Color(0xff747474),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 21.w, top: 11.h),
                    child: SizedBox(
                      width: 90.w,
                      child: TextFormField(
                        controller: _numberController,
                        readOnly: false,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon:
                                const Icon(Icons.keyboard_arrow_down_outlined),
                            color: const Color(0xff747474),
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
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: 10.w, top: 11.h, right: 21.w),
                      child: TextFormField(
                        controller: _mobileController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: 'Enter mobile number',
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
                            return 'Please enter your mobile number';
                          } else if (value.length != 10) {
                            return 'Mobile number should be 10 digits';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 21.w, top: 20.h),
                child: Row(
                  children: [
                    Text(
                      "By clicking Continue, you agree to our",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: const Color(0xff747474),
                      ),
                    ),
                    SizedBox(width: 3.w),
                    Text(
                      "T&Cs",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: const Color(0xff006FFF),
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: const Color(0xff006FFF),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Center(
                child: InkWell(
                  onTap: () async {
                    if (_formKey.currentState!.validate()) {
                      // SharedPreferences prefs =
                      //     await SharedPreferences.getInstance();
                      // await prefs.setString(
                      //     'mobile_number', _mobileController.text);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const StepTow();
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
            ],
          ),
        ),
      ),
    );
  }
}
