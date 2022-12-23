import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../App_config/Colors.dart';
import '../../Controller/SignUpController.dart';
import '../BottomNavigation.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller=Get.put(SignUpController());
    TextEditingController myEmailcontroller = TextEditingController();
    TextEditingController myPasswordcontroller = TextEditingController();
    TextEditingController myCitycontroller = TextEditingController();
    TextEditingController myAddresscontroller = TextEditingController();
    TextEditingController myPhonecontroller = TextEditingController();

    return Scaffold(
      body: Obx(
        ()=> SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Container(
                width: Get.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(left: 5.w, top: 5.h, bottom: 5.h),
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
                          padding: EdgeInsets.only(
                              left: 75.w, top: 10.h, bottom: 10.h),
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
                      color: AppColors.white,
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
                            padding: EdgeInsets.only(
                                top: 30.h, left: 12.w, right: 12.w),
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
                                      controller: myEmailcontroller,
                                      cursorColor: AppColors.appbackgrapund,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        filled: true,
                                        //<-- SEE HERE
                                        fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2,
                                              color:
                                                  Colors.black54), //<-- SEE HERE
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
                                        labelText: 'YourEmail@gmail.com',
                                        hintText: 'Enter Email',
                                        errorText: controller.emailError.value?"Email cant be empty":null
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 15.h, left: 12.w, right: 12.w),
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
                                      controller: myPasswordcontroller,
                                      cursorColor: AppColors.appbackgrapund,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        filled: true,
                                        //<-- SEE HERE
                                        fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2,
                                              color:
                                                  Colors.black54), //<-- SEE HERE
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
                                        labelText: 'Password',
                                        hintText: 'Enter Password',
                                          errorText: controller.PasswordError.value?"Password cant be empty":null
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5.h),
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
                            padding: EdgeInsets.only(
                                top: 30.h, left: 12.w, right: 12.w),
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
                                      controller: myCitycontroller,
                                      cursorColor: AppColors.appbackgrapund,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        filled: true,
                                        //<-- SEE HERE
                                        fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2,
                                              color:
                                                  Colors.black54), //<-- SEE HERE
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
                                        labelText: 'City',
                                        hintText: 'Islamabad',
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 15.h, left: 12.w, right: 12.w),
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
                                      controller: myAddresscontroller,
                                      cursorColor: AppColors.appbackgrapund,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        filled: true,
                                        //<-- SEE HERE
                                        fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2,
                                              color:
                                                  Colors.black54), //<-- SEE HERE
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
                                        labelText: 'Address',
                                        hintText: 'Enter Address',
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 15.h, left: 12.w, right: 12.w),
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
                                      controller: myPhonecontroller,
                                      obscureText: false,
                                      cursorColor: AppColors.appbackgrapund,
                                      decoration: InputDecoration(
                                        filled: true,
                                        //<-- SEE HERE
                                        fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2,
                                              color:
                                                  Colors.black54), //<-- SEE HERE
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
                                top: 15.h, left: 15.w, right: 15.w, bottom: 10.h),
                            child: GestureDetector(
                              onTap: (){
                                print("here");
                                if(myEmailcontroller.text!=""){
                                  if(myPasswordcontroller.text!=""){
                                    controller.email.value=myEmailcontroller.text;
                                    controller.password.value=myPasswordcontroller.text;
                                    controller.SignUp();
                                  }
                                  else{
                                    controller.PasswordError.value=true;
                                  }
                                }
                                else{
                                  controller.emailError.value=true;
                                }
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
        ),
      ),
    );
  }
}
