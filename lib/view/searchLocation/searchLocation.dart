// ignore_for_file: file_names, unused_import
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tracking/main.dart';
import 'package:tracking/view/home/home.dart';
import 'package:tracking/view/screens/confirmLocation/confirmLocation.dart';

class SearchLocation extends StatelessWidget {
  const SearchLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 144.h,
                      color: Color(0xff383434),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 3.w, top: 50.h),
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Home();
                            }));
                          },
                          icon: Icon(Icons.chevron_left_sharp,
                              size: 30, color: Color(0xffF8F8F8))),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 63.h, left: 70.w),
                      child: CircleAvatar(
                        backgroundColor: Color(0xff4ECB71),
                        radius: 8.sp,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 97.w, top: 50.h, right: 21.w),
                      child: SizedBox(
                        height: 40.h,
                        width: 290.w,
                        child: TextFormField(
                          // controller: _nameController,
                          decoration: InputDecoration(
                            fillColor: Color(0xff444444),
                            focusColor: Color(0xff444444),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14.sp),
                              borderSide:
                                  const BorderSide(color: Color(0xff444444)),
                            ),
                            hintText: 'Current Location',
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0xff747474),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14.sp),
                              borderSide:
                                  const BorderSide(color: Color(0xff444444)),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14.sp),
                              borderSide:
                                  const BorderSide(color: Color(0xff444444)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 97.w, top: 94.h, right: 21.w),
                      child: SizedBox(
                        height: 40.h,
                        width: 290.w,
                        child: TextFormField(
                          // controller: _nameController,
                          decoration: InputDecoration(
                            fillColor: Color(0xff444444),
                            focusColor: Color(0xff444444),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14.sp),
                              borderSide:
                                  const BorderSide(color: Color(0xff444444)),
                            ),
                            hintText: 'Where to?',
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0xff747474),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14.sp),
                              borderSide:
                                  const BorderSide(color: Color(0xff444444)),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14.sp),
                              borderSide:
                                  const BorderSide(color: Color(0xff444444)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 108.h, left: 70.w),
                      child: CircleAvatar(
                        backgroundColor: Color(0xffEB693A),
                        radius: 8.sp,
                      ),
                    ),
                    Positioned(
                        bottom: 35.h,
                        left: 76.w,
                        child: Text(
                          "|",
                          style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffAFADAD)),
                        )),
                    Positioned(
                        bottom: 45.h,
                        left: 76.w,
                        child: Text(
                          "|",
                          style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffAFADAD)),
                        )),
                    Positioned(
                        bottom: 55.h,
                        left: 76.w,
                        child: Text(
                          "|",
                          style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffAFADAD)),
                        )),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 17.w, top: 10.h),
                  child: Container(
                    width: 90.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                        border:
                            Border.all(width: 1.sp, color: Color(0xffDBDBDB)),
                        borderRadius: BorderRadius.circular(17.sp)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add_circle_outline_outlined,
                          color: Color(0xff006FFF),
                          size: 17.sp,
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                              color: Color(0xff383434), fontSize: 13.sp),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 17.w, top: 10.h),
                  child: Container(
                    width: 90.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                        border:
                            Border.all(width: 1.sp, color: Color(0xffDBDBDB)),
                        borderRadius: BorderRadius.circular(17.sp)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add_circle_outline_outlined,
                          color: Color(0xff006FFF),
                          size: 17.sp,
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          "Work",
                          style: TextStyle(
                              color: Color(0xff383434), fontSize: 13.sp),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 17.w, top: 10.h),
                  child: Container(
                    width: 111.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                        border:
                            Border.all(width: 1.sp, color: Color(0xffDBDBDB)),
                        borderRadius: BorderRadius.circular(17.sp)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite_border_rounded,
                          color: Color(0xffF21A1A),
                          size: 17.sp,
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          "Favourites",
                          style: TextStyle(
                              color: Color(0xff383434), fontSize: 13.sp),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, top: 50.h),
              child: Text(
                "Suggested Destinations",
                style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff8C8C8C)),
              ),
            ),
            Center(
              child: Stack(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ConfirmLocation();
                      }));
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 10.h),
                      width: 329.w,
                      height: 70.h,
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 1.sp, color: Color(0xffDBDBDB)),
                          borderRadius: BorderRadius.circular(17.sp)),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10.w, top: 16.h),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 12.w),
                                  child: Icon(
                                    Icons.update,
                                    color: Color(0xff383434),
                                    size: 22.sp,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 12.w),
                                  child: Text(
                                    "11.9 km",
                                    style: TextStyle(
                                        fontSize: 11.sp,
                                        color: Color(0xff8B8B8B)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 14.w, top: 16.h),
                            child: Column(
                              children: [
                                Text(
                                  "Thalassery",
                                  style: TextStyle(
                                      color: Color(0xff383434),
                                      fontSize: 14.sp),
                                ),
                                Text(
                                  "Kerala, India",
                                  style: TextStyle(
                                      color: Color(0xff8B8B8B),
                                      fontSize: 11.sp),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 124.w),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite_border_rounded,
                                  size: 20.sp,
                                  color: Color(0xff8B8B8B),
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 300.h, bottom: 8.h),
              child: Divider(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on_rounded,
                  color: Color(0xff423B3B),
                  size: 17.sp,
                ),
                SizedBox(
                  width: 3.w,
                ),
                Text(
                  "Select location on map",
                  style: TextStyle(color: Color(0xff939393)),
                ),
              ],
            ),
            SizedBox(
              height: 14.h,
            )
          ],
        ),
      ),
    );
  }
}
