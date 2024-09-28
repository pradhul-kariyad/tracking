// ignore_for_file: unused_import, avoid_print

import 'package:flutter/material.dart';
import 'package:tracking/view/screens/spashScreen/secondSreen.dart';

class FirstSreen extends StatelessWidget {
  const FirstSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 248, 248),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 130, top: 90),
                height: 52,
                width: 53,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/namma yatri 2.png'),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4, top: 90),
                child: Text("namma\nyatri"),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            width: 430,
            height: 383,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/namma yatri 1.png'),
                    fit: BoxFit.cover)),
          ),
          Column(
            children: [
              Text(
                "The fastest ride booking",
                style: TextStyle(color: Color(0xff423B3B)),
              ),
              Text("app is here!", style: TextStyle(color: Color(0xff423B3B))),
              SizedBox(
                height: 10,
              ),
              Text(
                "Our speedy booking process means you",
                style: TextStyle(color: Color(0xff8C8C8C)),
              ),
              Text(
                "get a ride quickly and easily.",
                style: TextStyle(color: Color(0xff8C8C8C)),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 130, top: 30),
                    child: CircleAvatar(
                      backgroundColor: Color(0xff423B3B),
                      radius: 8,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 30),
                    child: CircleAvatar(
                      backgroundColor: Color(0xffD9D9D9),
                      radius: 8,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 30),
                    child: CircleAvatar(
                      backgroundColor: Color(0xffD9D9D9),
                      radius: 8,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 30),
                    child: CircleAvatar(
                      backgroundColor: Color(0xffD9D9D9),
                      radius: 8,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  print("second sreen");
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Secondsreen();
                  }));
                },
                child: Container(
                  width: 300,
                  height: 45,
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
          )
        ],
      ),
    );
  }
}