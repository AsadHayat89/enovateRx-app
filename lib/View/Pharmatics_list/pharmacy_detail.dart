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

class PharmacyDetails extends StatelessWidget {
  const PharmacyDetails({Key? key}) : super(key: key);

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
                                padding: EdgeInsets.only(
                                    left: 15.w, right: 15.w, top: 15.h),
                                child: Container(
                                  width: Get.width,
                                  height: 200.h,
                                  decoration: BoxDecoration(
                                    borderRadius: new BorderRadius.only(
                                        bottomLeft:
                                        const Radius.circular(20.0),
                                        bottomRight:
                                        const Radius.circular(20.0),
                                        topLeft: const Radius.circular(20.0),
                                        topRight:
                                        const Radius.circular(20.0)),
                                  ),
                                  child: Stack(
                                    children: [
                                      Image.asset(
                                          "assets/pharmacyDetail.png"),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 50.w,
                                                top: 5.h,
                                                right: 5.w),
                                            child: Container(
                                              width: 40.w,
                                              height: 40.h,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  new BorderRadius.only(
                                                    topLeft:
                                                    const Radius.circular(
                                                        15.0),
                                                    topRight:
                                                    const Radius.circular(
                                                        15.0),
                                                    bottomLeft:
                                                    const Radius.circular(
                                                        15.0),
                                                    bottomRight:
                                                    const Radius.circular(
                                                        15.0),
                                                  ),
                                                  color:
                                                  Colors.blue.shade100),
                                              child: GestureDetector(
                                                  child: Icon(
                                                    FontAwesomeIcons.solidHeart,
                                                    color: Colors
                                                        .deepPurple.shade400,
                                                  )),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                EdgeInsets.only(left: 15.w, right: 15.w),
                                child: Container(
                                  width: Get.width,
                                  decoration: BoxDecoration(
                                    borderRadius: new BorderRadius.only(
                                        bottomLeft:
                                        const Radius.circular(20.0),
                                        bottomRight:
                                        const Radius.circular(20.0),
                                        topLeft: const Radius.circular(20.0),
                                        topRight:
                                        const Radius.circular(20.0)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            width: Get.width / 2.2,
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
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(left:8.w),
                                                  child: Icon(Icons.phone,color: Colors.white,),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(left: 10.w),
                                                  child: Text("416-812-9871",style: TextStyle(color: Colors.white),),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      Stack(
                                        children: [
                                          Container(
                                            width: Get.width / 2.2,
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
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(left:8.w),
                                                  child: Icon(Icons.phone,color: Colors.white,),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(left: 10.w),
                                                  child: Text("416-812-9871",style: TextStyle(color: Colors.white),),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.only(
                                    top: 12.h, left: 15.w, right: 15.w),
                                child: Container(
                                  width: Get.width,
                                  decoration: BoxDecoration(
                                      borderRadius: new BorderRadius.only(
                                        topLeft: const Radius.circular(20.0),
                                        topRight: const Radius.circular(20.0),
                                        bottomLeft: const Radius.circular(20.0),
                                        bottomRight:
                                        const Radius.circular(20.0),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 3,
                                          blurRadius: 7,
                                          offset: Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                      color: AppColors.white),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 10.w, top: 5.h, bottom: 5.h),
                                        child: Image.asset(
                                            "assets/walmart.png"),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 1.w),
                                        child: Row(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 10.w, bottom: 10.h),
                                                  child: Text(
                                                    "\$99",
                                                    style: GoogleFonts.poppins(
                                                        fontWeight:
                                                        FontWeight.w700,
                                                        fontSize: 20.sp,
                                                        color: AppColors
                                                            .appbackgrapund),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 10.w),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        width: 30.w,
                                                        height: 30.h,
                                                        decoration:
                                                        BoxDecoration(
                                                            borderRadius:
                                                            new BorderRadius
                                                                .only(
                                                              topLeft:
                                                              const Radius
                                                                  .circular(
                                                                  15.0),
                                                              topRight:
                                                              const Radius
                                                                  .circular(
                                                                  15.0),
                                                              bottomLeft:
                                                              const Radius
                                                                  .circular(
                                                                  15.0),
                                                              bottomRight:
                                                              const Radius
                                                                  .circular(
                                                                  15.0),
                                                            ),
                                                            color: Colors
                                                                .blue
                                                                .shade100),
                                                        child: GestureDetector(
                                                            child: Icon(
                                                              FontAwesomeIcons
                                                                  .locationArrow,
                                                              color: AppColors
                                                                  .appbackgrapund,
                                                              size: 18,
                                                            )),
                                                      ),
                                                      Padding(
                                                        padding:
                                                        EdgeInsets.only(
                                                            left: 10.w),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          children: [
                                                            Text(
                                                              "32-B Kings Road, NYC",
                                                              style: GoogleFonts.poppins(
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                                  fontSize:
                                                                  10.sp,
                                                                  color: AppColors
                                                                      .appbackgrapund),
                                                            ),
                                                            Text(
                                                              "\$99",
                                                              style: GoogleFonts.poppins(
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                                  fontSize:
                                                                  10.sp,
                                                                  color: AppColors
                                                                      .appbackgrapund),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
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
                              Padding(
                                padding: EdgeInsets.only(left: 15.w,right: 15.w,top: 10.h),
                                child: Container(
                                  width: Get.width,
                                  height: 50.h,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 3,
                                          blurRadius: 7,
                                          offset: Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                      borderRadius: new BorderRadius.only(
                                        topLeft:
                                        const Radius.circular(20.0),
                                        topRight:
                                        const Radius.circular(20.0),
                                        bottomLeft:
                                        const Radius.circular(20.0),
                                        bottomRight:
                                        const Radius.circular(20.0),
                                      ),
                                      color: Colors.white),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                        EdgeInsets.only(left: 10.w),
                                        child: Text(
                                            "Pharmacies with offers"),
                                      ),
                                      Padding(
                                        padding:
                                        EdgeInsets.only(right: 10.w),
                                        child:
                                        Icon(Icons.arrow_drop_down),
                                      )
                                    ],
                                  ),
                                ),
                              )
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
