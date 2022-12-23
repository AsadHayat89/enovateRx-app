import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled2/App_config/Colors.dart';

import 'SignUp.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController mycontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 30.h),
          child: Container(
            width: Get.width,
            height: Get.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5.w, top: 5.h, bottom: 5.h),
                  child: Container(
                    child: Text(
                      "enovateRx",
                      style: GoogleFonts.notoSansMongolian(
                          color: AppColors.appbackgrapund,
                          fontSize: 30.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  height: Get.height - 50,
                  width: Get.width,
                  color: AppColors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 12.w, top: 120.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Sign In",
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
                                  // obscureText: true,

                                  cursorColor: AppColors.appbackgrapund,
                                  decoration: InputDecoration(
                                    filled: true,
                                    //<-- SEE HERE
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: AppColors.appbackgrapund,
                                          width: 2.0),
                                    ),
                                    fillColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2,
                                          color: Colors.black54), //<-- SEE HERE
                                    ),
                                    border: OutlineInputBorder(),
                                    labelText: 'YourEmail@gmail.com',
                                    labelStyle: TextStyle(
                                        color: AppColors.appbackgrapund),
                                    hintText: 'Enter Email',
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
                                  cursorColor: AppColors.appbackgrapund,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    filled: true,
                                    //<-- SEE HERE
                                    fillColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.black54,
                                      ),
                                      //<-- SEE HERE


                                    ),
                                    // cursorColor: AppColors.appbackgrapund,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: AppColors.appbackgrapund,
                                          width: 2.0),
                                    ),
                                    labelStyle: TextStyle(
                                        color: AppColors.appbackgrapund),
                                    border: OutlineInputBorder(),
                                    labelText: 'Enter Password',

                                    hintText: 'Enter Password',
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 25.h, left: 15.w, right: 15.w),
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
                                  color: AppColors.appbackgrapund,
                                ),
                                child: Center(
                                  child: Text(
                                    "Sign In",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 15.h, left: 15.w, right: 15.w),
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
                                  color: AppColors.appbackgrapund,
                                ),
                                child: Center(
                                  child: Text(
                                    "Login with facebook",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: true,
                                        onChanged: (value) {},
                                      ),
                                      Text("Remember me")
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Do you have any account",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        SignUp()));
                                            // Get.to(SignUp());
                                          },
                                          child: Text(
                                            "Register?",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: AppColors.appbackgrapund,
                                            ),
                                          )),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
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
