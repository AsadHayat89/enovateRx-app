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

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var CouController = Get.put(CouponsController());
    int _currentIndex = 0;

    return Scaffold(
      backgroundColor: AppColors.appbackgrapund,
      body: Obx(
        () => SingleChildScrollView(
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
                              Container(
                                width: 42.w,
                                height: 42.h,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.white),
                                child: Image.asset("assets/more.png"),
                              ),
                              Text(
                                "9jaRx",
                                style: GoogleFonts.notoSansMongolian(
                                    color: Colors.white,
                                    fontSize: 30.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                width: 42.w,
                                height: 42.h,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.white),
                                child: Image.asset(
                                  "assets/back_avatar.png",
                                  scale: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 13.h),
                          child: Container(
                            width: Get.width,
                            decoration: BoxDecoration(
                                borderRadius: new BorderRadius.only(
                                    topLeft: const Radius.circular(20.0),
                                    topRight: const Radius.circular(20.0)),
                                color: AppColors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 25.h, left: 15.w),
                                  child: Text(
                                    "Good Morning,",
                                    style: GoogleFonts.playfairDisplay(
                                        color: Colors.black,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 2.h, left: 15.w),
                                  child: Text(
                                    "Richard Abhiana,",
                                    style: GoogleFonts.playfairDisplay(
                                        color: AppColors.appbackgrapund,
                                        fontSize: 29,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 15.h, left: 15.w, right: 15.w),
                                  child: Container(
                                    height: 60.h,
                                    decoration: BoxDecoration(
                                      borderRadius: new BorderRadius.only(
                                        topLeft: const Radius.circular(20.0),
                                        topRight: const Radius.circular(20.0),
                                        bottomLeft: const Radius.circular(20.0),
                                        bottomRight:
                                            const Radius.circular(20.0),
                                      ),
                                      border: Border.all(
                                        color: AppColors.appbackgrapund,
                                        width: 2,
                                      ),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 16.w),
                                          child: Text(
                                            "Search for a medication coupon",
                                            style: GoogleFonts.playfairDisplay(
                                                color: AppColors.appbackgrapund,
                                                fontSize: 15),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(right: 10.w),
                                          child: Icon(
                                            Icons.search,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                // CarouselSlider(
                                //   options: CarouselOptions(
                                //     height: 200.0,
                                //     autoPlay: true,
                                //     autoPlayInterval: Duration(seconds: 3),
                                //     autoPlayAnimationDuration: Duration(milliseconds: 800),
                                //     autoPlayCurve: Curves.fastOutSlowIn,
                                //     pauseAutoPlayOnTouch: true,
                                //     aspectRatio: 2.0,
                                //
                                //   ),
                                //   items: cardList.map((card){
                                //     return Builder(
                                //         builder:(BuildContext context){
                                //           return Container(
                                //             height: MediaQuery.of(context).size.height*0.30,
                                //             width: MediaQuery.of(context).size.width,
                                //             child: Card(
                                //               color: Colors.blueAccent,
                                //               child: card,
                                //             ),
                                //           );
                                //         }
                                //     );
                                //   }).toList(),
                                // ),
                                //

                                Container(
                                  width: Get.width,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 28, left: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Available Coupons",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black38),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 9.h),
                                          child: Container(
                                            height: 120,
                                            child: ListView.builder(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemCount: CouController
                                                    .ConponsList.length,
                                                itemBuilder:
                                                    (BuildContext context,
                                                        int index) {
                                                  return Padding(

                                                    //
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 8.0),
                                                    child: Discount_coupons(
                                                      title: CouController
                                                          .ConponsList[index]
                                                          .title,
                                                      ExpireDate: CouController
                                                          .ConponsList[index]
                                                          .Expire,
                                                      discountPercent:
                                                          CouController
                                                              .ConponsList[
                                                                  index]
                                                              .offPercentage,
                                                      color: CouController
                                                          .ConponsList[index]
                                                          .color,
                                                    ),
                                                  );
                                                }),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 15.w,
                                      right: 15.w,
                                      top: 15.h,
                                      bottom: 15.h),
                                  child: Container(
                                    height: 202.h,
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                        borderRadius: new BorderRadius.only(
                                          topLeft: const Radius.circular(15.0),
                                          topRight: const Radius.circular(15.0),
                                          bottomLeft:
                                              const Radius.circular(15.0),
                                          bottomRight:
                                              const Radius.circular(15.0),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0,
                                                3), // changes position of shadow
                                          ),
                                        ],
                                        color: Colors.white),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 14.w, top: 20.h),
                                                child: Container(
                                                  width: 180.w,
                                                  child: Text(
                                                    "Not Sure Which MED to Choose?",
                                                    style: GoogleFonts.poppins(
                                                        fontWeight:
                                                            FontWeight.w800,
                                                        fontSize: 14.sp),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 14.w, top: 2.h),
                                                child: Container(
                                                  width: 180.w,
                                                  child: Text(
                                                    "Talk to a Qualified Doctor to know the right medicine for your health condition.",
                                                    style: GoogleFonts.poppins(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 13.sp),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 14.w, top: 12.h),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          new BorderRadius.only(
                                                        topLeft: const Radius
                                                            .circular(8.0),
                                                        topRight: const Radius
                                                            .circular(8.0),
                                                        bottomLeft: const Radius
                                                            .circular(8.0),
                                                        bottomRight:
                                                            const Radius
                                                                .circular(8.0),
                                                      ),
                                                      color: AppColors
                                                          .appbackgrapund),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 10.h,
                                                            horizontal: 10.w),
                                                    child: Text(
                                                      "TALK TO A PHARMACIST",
                                                      style:
                                                          GoogleFonts.poppins(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 14.sp),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Image.asset("assets/nurse.png")
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
      ),
    );
  }
}
