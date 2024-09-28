// ignore_for_file: file_names, unused_import

import 'package:flutter/material.dart';
import 'package:tracking/view/screens/spashScreen/fourthScreen.dart';
import 'package:tracking/view/screens/spashScreen/thirdSreen.dart';
import 'package:tracking/view/widgets/dividerWidget/dividerWidget.dart';

class Mobilenumber extends StatelessWidget {
  const Mobilenumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 248, 248),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                color: Color(0xff383434),
                height: 149,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 10),
                child: IconButton(
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
              ),
              // Dividerwidget(),
              // SizedBox(width: 10,),
              // Dividerwidget(),
              // Dividerwidget(),
            ],
          )
        ],
      ),
    );
  }
}
