import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../App_config/Colors.dart';
import '../BottomNavigation.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _LoginState();
}

class _LoginState extends State<Profile> {
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(left: 5.w, top: 5.h, bottom: 5.h),
                      child: Container(child: Icon(Icons.arrow_back_rounded)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                      child: Container(
                        child: Text(
                          "Profile",
                          style: GoogleFonts.notoSansMongolian(
                              color: Colors.black54,
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.only(right: 5.w),
                          child: Text(
                            "Logout",
                            style: GoogleFonts.notoSansMongolian(
                                color: Colors.black54,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: Get.width,
                  color:    AppColors.white,
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
                              "Profile",
                              style: TextStyle(fontSize: 24),
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
                              "First Name",
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
                                    labelText: 'Doe John',
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
                              "Last Name",
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
                                    labelText: 'John',
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
                                    labelText: 'DowJohn@gmail.com',
                                  ),
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
                              "Phone",
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
                                    labelText: '+232143435',
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
                              "City",
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
                                    labelText: 'Islamabad',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 15.h, left: 15.w, right: 15.w, bottom: 10.h),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => MyNavigationBar()));
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
                                color: AppColors.appbackgrapund),
                            child: Center(
                              child: Text(
                                "Save",
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
