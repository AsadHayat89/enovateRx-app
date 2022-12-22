import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled2/View/Pharmatics_list/pharmacy_detail.dart';

import '../../App_config/Colors.dart';
import '../../Controller/Coupons_controller.dart';
import '../../Controller/PharmaticesController.dart';
import '../../widgets/disscount_coupons.dart';

class Pharmatices extends StatelessWidget {
  const Pharmatices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var CouController = Get.put(PharmaciesController());
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
                        padding:
                            EdgeInsets.only(top: 45.h, left: 15.w, right: 15.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 42.w,
                              height: 42.h,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.white),
                              child: Image.asset("assets/more.png"),
                            ),
                            Text(
                              "Pharmacies",
                              style: GoogleFonts.notoSansMongolian(
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            Container(
                                width: 78.w,
                                height: 42.h,
                                decoration: BoxDecoration(
                                    borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(20.0),
                                      topRight: const Radius.circular(20.0),
                                      bottomLeft: const Radius.circular(20.0),
                                      bottomRight: const Radius.circular(20.0),
                                    ),
                                    color: AppColors.white),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 5.w),
                                      child: Icon(
                                        Icons.map,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 5.w),
                                      child: Text(
                                        "Map",
                                        style: TextStyle(
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 13.h),
                        child: Container(
                          width: Get.width,
                          height: Get.height - 70.h,
                          decoration: BoxDecoration(
                              borderRadius: new BorderRadius.only(
                                  topLeft: const Radius.circular(20.0),
                                  topRight: const Radius.circular(20.0)),
                              color: AppColors.white),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 25.h, left: 15.w),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 50.w,
                                      height: 50.h,
                                      decoration: BoxDecoration(
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
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 3,
                                              blurRadius: 7,
                                              offset: Offset(0,
                                                  3), // changes position of shadow
                                            ),
                                          ],
                                          color: AppColors.white),
                                      child: Icon(
                                        Icons.search,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 15.w),
                                      child: Container(
                                        width: Get.width - 100,
                                        height: 50.h,
                                        decoration: BoxDecoration(
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
                                            color: Colors.grey.shade300),
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
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 70.h),
                                  child: Container(
                                    child: ListView(
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        children: [
                                          GestureDetector(
                                          onTap:(){
                                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => PharmacyDetails()));
                                          //Get.to(PharmacyDetails());
                                  },
                                            child: Padding(
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
                                                        Padding(
                                                          padding:
                                                          EdgeInsets.only(left: 10.w),
                                                          child:
                                                          Icon(Icons.arrow_forward_ios_outlined,size: 15,),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
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
                                                            padding: EdgeInsets.only(left:10.w),
                                                            child: Container(
                                                              height:30,
                                                              width:20,
                                                      decoration:BoxDecoration(
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
                                                                  color: Colors.purple
                                                                      .shade100),
                                                                child:Row(
                                                                    children:[
                                                                      Text("asad"),
                                                                    ]
                                                                )
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: EdgeInsets.only(
                                                                left: 10.w),
                                                            child: Text(
                                                              "\$99",
                                                              style: GoogleFonts.poppins(
                                                                  fontWeight:
                                                                  FontWeight.w700,
                                                                  fontSize: 18.sp,
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
                                                      Padding(
                                                        padding:
                                                        EdgeInsets.only(left: 10.w),
                                                        child:
                                                        Icon(Icons.arrow_forward_ios_outlined,size: 15,),
                                                      )
                                                    ],
                                                  ),
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
                                                        Padding(
                                                          padding:
                                                          EdgeInsets.only(left: 10.w),
                                                          child:
                                                          Icon(Icons.arrow_forward_ios_outlined,size: 15,),
                                                        )
                                                      ],
                                                    ),
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
                                                        Padding(
                                                          padding:
                                                          EdgeInsets.only(left: 10.w),
                                                          child:
                                                          Icon(Icons.arrow_forward_ios_outlined,size: 15,),
                                                        )
                                                      ],
                                                    ),
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
                                                        Padding(
                                                          padding:
                                                          EdgeInsets.only(left: 10.w),
                                                          child:
                                                          Icon(Icons.arrow_forward_ios_outlined,size: 15,),
                                                        )
                                                      ],
                                                    ),
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
                                                        Padding(
                                                          padding:
                                                          EdgeInsets.only(left: 10.w),
                                                          child:
                                                          Icon(Icons.arrow_forward_ios_outlined,size: 15,),
                                                        )
                                                      ],
                                                    ),
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
                                                        Padding(
                                                          padding:
                                                          EdgeInsets.only(left: 10.w),
                                                          child:
                                                          Icon(Icons.arrow_forward_ios_outlined,size: 15,),
                                                        )
                                                      ],
                                                    ),
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
                                                        Padding(
                                                          padding:
                                                          EdgeInsets.only(left: 10.w),
                                                          child:
                                                          Icon(Icons.arrow_forward_ios_outlined,size: 15,),
                                                        )
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
