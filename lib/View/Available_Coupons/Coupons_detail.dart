import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../App_config/Colors.dart';
import '../../widgets/ads_Design.dart';
import '../../widgets/disscount_coupons.dart';
import '../BottomNavigation.dart';
import '../../Controller/Coupons_controller.dart';

class CouponsDetails extends StatelessWidget {
  const CouponsDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var CouController = Get.put(CouponsController());
    int _currentIndex = 0;

    return Scaffold(
      backgroundColor: AppColors.appbackgrapund,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Container(
                    child: Image.asset("assets/background_theme.png"),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: 45.h, left: 15.w, right: 15.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap:(){
                                Navigator.pop(context,true);
                              },
                              child: Container(
                                width: 42.w,
                                height: 42.h,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.white),
                                child: Icon(
                                  Icons.arrow_back_rounded,
                                  color: AppColors.appbackgrapund,
                                ),
                              ),
                            ),
                            Text(
                              "Pharmacy details",
                              style: GoogleFonts.notoSansMongolian(
                                  color: Colors.white,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                            Container(
                              width: 42.w,
                              height: 42.h,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.white),
                              child: Icon(
                                Icons.search,
                                color: AppColors.appbackgrapund,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 13.h),
                        child: Container(
                          width: Get.width,
                          height: Get.height - 100,
                          decoration: BoxDecoration(
                              borderRadius: new BorderRadius.only(
                                  topLeft: const Radius.circular(20.0),
                                  topRight: const Radius.circular(20.0)),
                              color: AppColors.white),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 15.h),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 15.h),
                                  child: Container(
                                    width: MediaQuery. of(context). size. width ,
                                    decoration: BoxDecoration(
                                        borderRadius: new BorderRadius.only(
                                          topLeft: const Radius.circular(15.0),
                                          topRight: const Radius.circular(15.0),
                                          bottomLeft: const Radius.circular(15.0),
                                          bottomRight: const Radius.circular(15.0),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 5,
                                            blurRadius: 3,
                                            offset: Offset(0, 3), // changes position of shadow
                                          ),
                                        ],
                                        color: Colors.white),
                                    child: Column(
                                      children: [

                                        Padding(
                                          padding: EdgeInsets.only(bottom: 14.h),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width: 96.w,
                                                  height: 96.h,
                                                  child: Image.asset(
                                                    "assets/medicine.png",
                                                    fit: BoxFit.fill,
                                                  )),
                                              Center(
                                                child: Padding(
                                                  padding: EdgeInsets.only(left: 5.w),
                                                  child: Container(
                                                    width: 1,
                                                    height: 58.h,
                                                    color: Colors.black26,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: 17.w, top: 15.h),
                                                child: Container(
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        "Omega 3 Fish Oil Capsule",
                                                        style: GoogleFonts.poppins(
                                                            fontWeight: FontWeight.w600,
                                                            fontSize: 13.sp,
                                                            color: Colors.black),
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets.only(top: 4.h),
                                                        child: Text(
                                                          "Limit: 4",
                                                          style: GoogleFonts.poppins(
                                                              fontWeight: FontWeight.w600,
                                                              fontSize: 8.sp,
                                                              color: Colors.black45),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets.only(top: 9.h),
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Column(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Row(
                                                                  children: [
                                                                    Icon(
                                                                      FontAwesomeIcons.solidClock,
                                                                      size: 18,
                                                                      color: Colors.black,
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsets.only(left: 5),
                                                                      child: Text(
                                                                        "Ends in 4 days",
                                                                        style: GoogleFonts.poppins(
                                                                            color: Colors.black38,
                                                                            fontWeight: FontWeight.w600,
                                                                            fontSize: 10.sp),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsets.only(top: 5.h),
                                                                  child: Text(
                                                                    "Save \$ 9.99",
                                                                    style: GoogleFonts.poppins(
                                                                        fontWeight: FontWeight.w700,
                                                                        fontSize: 12.sp,
                                                                        color: AppColors.appbackgrapund),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),

                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
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
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: new BorderRadius.only(
                                        topLeft: const Radius.circular(15.0),
                                        topRight: const Radius.circular(15.0),
                                        bottomLeft: const Radius.circular(15.0),
                                        bottomRight: const Radius.circular(15.0),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 3,
                                          offset: Offset(0, 3), // changes position of shadow
                                        ),
                                      ],
                                      color: Colors.white),
                                  child: ExpansionTile(
                                    title: Text(
                                      "Save Coupons",
                                      style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                                    ),
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top:10.h,left:15.w,bottom: 15.h),
                                            child: Container(
                                              width: Get.width / 2.5,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  new BorderRadius.only(
                                                      bottomLeft:
                                                      const Radius.circular(
                                                          15.0),
                                                      bottomRight:
                                                      const Radius.circular(
                                                          15.0),
                                                      topLeft:
                                                      const Radius.circular(
                                                          15.0),
                                                      topRight:
                                                      const Radius.circular(
                                                          15.0)),
                                                  color: AppColors.appbackgrapund),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(left:8.w),
                                                    child: Icon(Icons.copy,color: Colors.white,),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(left: 10.w),
                                                    child: Text("Text",style: TextStyle(color: Colors.white),),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top:10.h,right:15.w,bottom: 15.h),
                                            child: Container(
                                              width: Get.width / 2.5,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  new BorderRadius.only(
                                                      bottomLeft:
                                                      const Radius.circular(
                                                          15.0),
                                                      bottomRight:
                                                      const Radius.circular(
                                                          15.0),
                                                      topLeft:
                                                      const Radius.circular(
                                                          15.0),
                                                      topRight:
                                                      const Radius.circular(
                                                          15.0)),
                                                  color: AppColors.appbackgrapund),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(left:8.w),
                                                    child: Icon(Icons.download,color: Colors.white,),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(left: 10.w),
                                                    child: Text("Save",style: TextStyle(color: Colors.white),),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: new BorderRadius.only(
                                        topLeft: const Radius.circular(15.0),
                                        topRight: const Radius.circular(15.0),
                                        bottomLeft: const Radius.circular(15.0),
                                        bottomRight: const Radius.circular(15.0),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 3,
                                          offset: Offset(0, 3), // changes position of shadow
                                        ),
                                      ],
                                      color: Colors.white),
                                  child: ExpansionTile(
                                    title: Text(
                                      "Save Coupons",
                                      style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                                    ),
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top:10.h,left:15.w,bottom: 15.h),
                                            child: Container(
                                              width: Get.width / 2.5,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  new BorderRadius.only(
                                                      bottomLeft:
                                                      const Radius.circular(
                                                          15.0),
                                                      bottomRight:
                                                      const Radius.circular(
                                                          15.0),
                                                      topLeft:
                                                      const Radius.circular(
                                                          15.0),
                                                      topRight:
                                                      const Radius.circular(
                                                          15.0)),
                                                  color: AppColors.appbackgrapund),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(left:8.w),
                                                    child: Icon(Icons.copy,color: Colors.white,),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(left: 10.w),
                                                    child: Text("Text",style: TextStyle(color: Colors.white),),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top:10.h,right:15.w,bottom: 15.h),
                                            child: Container(
                                              width: Get.width / 2.5,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  new BorderRadius.only(
                                                      bottomLeft:
                                                      const Radius.circular(
                                                          15.0),
                                                      bottomRight:
                                                      const Radius.circular(
                                                          15.0),
                                                      topLeft:
                                                      const Radius.circular(
                                                          15.0),
                                                      topRight:
                                                      const Radius.circular(
                                                          15.0)),
                                                  color: AppColors.appbackgrapund),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(left:8.w),
                                                    child: Icon(Icons.download,color: Colors.white,),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(left: 10.w),
                                                    child: Text("Save",style: TextStyle(color: Colors.white),),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: new BorderRadius.only(
                                        topLeft: const Radius.circular(15.0),
                                        topRight: const Radius.circular(15.0),
                                        bottomLeft: const Radius.circular(15.0),
                                        bottomRight: const Radius.circular(15.0),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 3,
                                          offset: Offset(0, 3), // changes position of shadow
                                        ),
                                      ],
                                      color: Colors.white),
                                  child: ExpansionTile(
                                    title: Text(
                                      "Save Coupons",
                                      style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                                    ),
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top:10.h,left:15.w,bottom: 15.h),
                                            child: Container(
                                              width: Get.width / 2.5,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  new BorderRadius.only(
                                                      bottomLeft:
                                                      const Radius.circular(
                                                          15.0),
                                                      bottomRight:
                                                      const Radius.circular(
                                                          15.0),
                                                      topLeft:
                                                      const Radius.circular(
                                                          15.0),
                                                      topRight:
                                                      const Radius.circular(
                                                          15.0)),
                                                  color: AppColors.appbackgrapund),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(left:8.w),
                                                    child: Icon(Icons.copy,color: Colors.white,),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(left: 10.w),
                                                    child: Text("Text",style: TextStyle(color: Colors.white),),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top:10.h,right:15.w,bottom: 15.h),
                                            child: Container(
                                              width: Get.width / 2.5,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  new BorderRadius.only(
                                                      bottomLeft:
                                                      const Radius.circular(
                                                          15.0),
                                                      bottomRight:
                                                      const Radius.circular(
                                                          15.0),
                                                      topLeft:
                                                      const Radius.circular(
                                                          15.0),
                                                      topRight:
                                                      const Radius.circular(
                                                          15.0)),
                                                  color: AppColors.appbackgrapund),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(left:8.w),
                                                    child: Icon(Icons.download,color: Colors.white,),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(left: 10.w),
                                                    child: Text("Save",style: TextStyle(color: Colors.white),),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: new BorderRadius.only(
                                        topLeft: const Radius.circular(15.0),
                                        topRight: const Radius.circular(15.0),
                                        bottomLeft: const Radius.circular(15.0),
                                        bottomRight: const Radius.circular(15.0),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 3,
                                          offset: Offset(0, 3), // changes position of shadow
                                        ),
                                      ],
                                      color: Colors.white),
                                  child: ExpansionTile(
                                    title: Text(
                                      "Save Coupons",
                                      style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                                    ),
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top:10.h,left:15.w,bottom: 15.h),
                                            child: Container(
                                              width: Get.width / 2.5,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  new BorderRadius.only(
                                                      bottomLeft:
                                                      const Radius.circular(
                                                          15.0),
                                                      bottomRight:
                                                      const Radius.circular(
                                                          15.0),
                                                      topLeft:
                                                      const Radius.circular(
                                                          15.0),
                                                      topRight:
                                                      const Radius.circular(
                                                          15.0)),
                                                  color: AppColors.appbackgrapund),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(left:8.w),
                                                    child: Icon(Icons.copy,color: Colors.white,),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(left: 10.w),
                                                    child: Text("Text",style: TextStyle(color: Colors.white),),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top:10.h,right:15.w,bottom: 15.h),
                                            child: Container(
                                              width: Get.width / 2.5,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  new BorderRadius.only(
                                                      bottomLeft:
                                                      const Radius.circular(
                                                          15.0),
                                                      bottomRight:
                                                      const Radius.circular(
                                                          15.0),
                                                      topLeft:
                                                      const Radius.circular(
                                                          15.0),
                                                      topRight:
                                                      const Radius.circular(
                                                          15.0)),
                                                  color: AppColors.appbackgrapund),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(left:8.w),
                                                    child: Icon(Icons.download,color: Colors.white,),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(left: 10.w),
                                                    child: Text("Save",style: TextStyle(color: Colors.white),),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
