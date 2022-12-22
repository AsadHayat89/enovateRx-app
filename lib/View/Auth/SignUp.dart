import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../BottomNavigation.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _LoginState();
}

class _LoginState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 30.h),
          child: Container(
            width: Get.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 5.w, top: 5.h, bottom: 5.h),
                      child: Container(
                        child: Text(
                          "Cancel",
                          style: GoogleFonts.notoSansMongolian(
                              color: Colors.black54,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 75.w, top: 10.h, bottom: 10.h),
                      child: Container(
                        child: Text(
                          "Register",
                          style: GoogleFonts.notoSansMongolian(
                              color: Colors.black54,
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: Get.width,
                  color: Colors.blue.shade100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 12.w, top: 50.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Account Info",
                              style: TextStyle(fontSize: 24),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 5.w),
                              child: Icon(
                                Icons.lock,
                                color: Colors.black38,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.only(top: 30.h, left: 12.w, right: 12.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Email",
                              style: TextStyle(fontSize: 18),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.h),
                              child: Container(
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    filled: true,
                                    //<-- SEE HERE
                                    fillColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2,
                                          color: Colors.black54), //<-- SEE HERE
                                    ),
                                    border: OutlineInputBorder(),
                                    labelText: 'YourEmail@gmail.com',
                                    hintText: 'Enter Password',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.only(top: 15.h, left: 12.w, right: 12.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Password",
                              style: TextStyle(fontSize: 18),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.h),
                              child: Container(
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    filled: true,
                                    //<-- SEE HERE
                                    fillColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2,
                                          color: Colors.black54), //<-- SEE HERE
                                    ),
                                    border: OutlineInputBorder(),
                                    labelText: 'Enter Password',
                                    hintText: 'Enter Password',
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top:5.h),
                              child: Container(
                                width: Get.width,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "weak Password",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.only(top: 30.h, left: 12.w, right: 12.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Select city",
                              style: TextStyle(fontSize: 18),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.h),
                              child: Container(
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    filled: true,
                                    //<-- SEE HERE
                                    fillColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2,
                                          color: Colors.black54), //<-- SEE HERE
                                    ),
                                    border: OutlineInputBorder(),
                                    labelText: 'Rawalpindi',
                                    hintText: 'Enter Password',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.only(top: 15.h, left: 12.w, right: 12.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Address",
                              style: TextStyle(fontSize: 18),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.h),
                              child: Container(
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    filled: true,
                                    //<-- SEE HERE
                                    fillColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2,
                                          color: Colors.black54), //<-- SEE HERE
                                    ),
                                    border: OutlineInputBorder(),
                                    labelText: 'Address',
                                    hintText: 'Enter Password',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.only(top: 15.h, left: 12.w, right: 12.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Phone Number",
                              style: TextStyle(fontSize: 18),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.h),
                              child: Container(
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    filled: true,
                                    //<-- SEE HERE
                                    fillColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2,
                                          color: Colors.black54), //<-- SEE HERE
                                    ),
                                    border: OutlineInputBorder(),
                                    labelText: '123456',
                                    hintText: 'Enter Password',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 15.h, left: 15.w, right: 15.w,bottom: 10.h),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyNavigationBar()));
                           // Get.to(MyNavigationBar());
                          },
                          child: Container(
                            width: Get.width,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: new BorderRadius.only(
                                  topLeft: const Radius.circular(25.0),
                                  topRight: const Radius.circular(25.0),
                                  bottomLeft: const Radius.circular(25.0),
                                  bottomRight: const Radius.circular(25.0),
                                ),
                                color: Colors.red.shade400),
                            child: Center(
                              child: Text(
                                "Continue to next Step",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
