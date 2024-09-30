// ignore_for_file: avoid_print, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tracking/view/home/home.dart';
import 'package:tracking/view/screens/spashScreen/fourthScreen.dart';

class StepThree extends StatefulWidget {
  const StepThree({super.key});

  @override
  _StepThreeState createState() => _StepThreeState();
}

class _StepThreeState extends State<StepThree> {
  final TextEditingController _nameController = TextEditingController();
  String? _selectedGender;
  bool _isDisabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 248, 248),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
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
                                  return Fourthscreen();
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
                              color: const Color(0xffF8F8F8),
                            ),
                            Text(
                              "Step 3/3",
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
                            "Just one last thing",
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
                    padding: EdgeInsets.only(left: 15.w, top: 20.h),
                    child: Row(
                      children: [
                        Text(
                          "Full Name ",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "(Helps driver confirm it is you)",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: const Color(0xff747474),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 10.w, top: 11.h, right: 21.w),
                    child: TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        hintText: 'Enter Your Name',
                        hintStyle: TextStyle(
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
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.w, top: 30.h),
                    child: Text(
                      "Gender",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 10.w, top: 11.h, right: 21.w),
                    child: DropdownButtonFormField<String>(
                      value: _selectedGender,
                      items: ["Male", "Female"].map((String gender) {
                        return DropdownMenuItem<String>(
                          value: gender,
                          child: Text(gender),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedGender = newValue;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: 'Select Your Gender',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color(0xff747474),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 15.h,
                          horizontal: 12.w,
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
                  Padding(
                    padding: EdgeInsets.only(left: 15.w, top: 40.h),
                    child: Text(
                      "Are you a person with a disability?",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: Color(0xff747474),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  // No option
                  _buildDisabilityOption("No", false),
                  SizedBox(height: 10.h),
                  // Yes option
                  _buildDisabilityOption("Yes", true),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              print("Continue");
              print("Selected Gender: $_selectedGender");
              print("Continue");
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Home();
              }));
            },
            child: Container(
              width: 320.w,
              height: 44.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9.sp),
                color: const Color(0xff423B3B),
              ),
              child: Center(
                child: Text(
                  "Let’s go",
                  style: TextStyle(color: const Color(0xffFFEA00)),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }

  Widget _buildDisabilityOption(String label, bool isDisabled) {
    return Padding(
      padding: EdgeInsets.only(left: 11.w),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _isDisabled = isDisabled;
          });
        },
        child: Stack(
          children: [
            Container(
              width: 329.w,
              height: 47.h,
              decoration: BoxDecoration(
                color:
                    _isDisabled == isDisabled ? Colors.black : Colors.black12,
                borderRadius: BorderRadius.circular(14.sp),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 0.8.h, left: 1.w),
              width: 327.w,
              height: 45.5.h,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 248, 248),
                borderRadius: BorderRadius.circular(14.sp),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2.h, left: 3.w),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.brightness_1_outlined,
                  weight: 1.sp,
                  size: 22.sp,
                  color: _isDisabled == isDisabled
                      ? Colors.black
                      : Colors.transparent,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50.w, top: 11.h),
              child: Text(
                label,
                style: TextStyle(fontSize: 17.sp),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 22.w, top: 18.h),
              child: CircleAvatar(
                radius: 5.sp,
                backgroundColor: _isDisabled == isDisabled
                    ? Colors.black
                    : Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
