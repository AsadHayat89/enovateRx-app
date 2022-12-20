import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../App_config/Colors.dart';
import '../Controller/Coupons_details_controller.dart';
import '../View/Available_Coupons/available_Coupons.dart';

class Coupons_detail_widget extends StatelessWidget {
  String? title;
  String? Limit;
  String? time;
  String? savePrice;
  bool? Exlusive;
  bool? save;
  String? image;
  int? index;
  Coupons_detail_widget(
      {Key? key,
      this.image,
        this.index,
      this.title,
      this.Limit,
      this.time,
      this.savePrice,
      this.Exlusive,
      this.save})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var CouController = Get.put(CouponsDetailController());
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 15.h),
      child: Obx(
        ()=> Container(
          width: width,
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
              if (CouController.ConponsList[this.index!].Exclusive!)
                Padding(
                  padding: EdgeInsets.only(top: 15.h),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(15.0),
                          topRight: const Radius.circular(15.0),
                          bottomLeft: const Radius.circular(15.0),
                          bottomRight: const Radius.circular(15.0),
                        ),
                        color: Colors.blue.shade100),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.w, vertical: 7.h),
                      child: Text(
                        "EXCLUSIVE",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                            color: AppColors.appbackgrapund),
                      ),
                    ),
                  ),
                ),
              Padding(
                padding: EdgeInsets.only(bottom: 14.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        width: 96.w,
                        height: 96.h,
                        child: Image.asset(
                          this.image!,
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
                              "${this.title}",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13.sp,
                                  color: Colors.black),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 4.h),
                              child: Text(
                                "Limit: ${this.Limit}",
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
                                              "Ends in ${this.time} days",
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
                                          "Save \$ ${this.savePrice}",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 12.sp,
                                              color: AppColors.appbackgrapund),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 50.w),
                                    child: Container(
                                      width: 40.w,
                                      height: 40.h,
                                      decoration: BoxDecoration(
                                          borderRadius: new BorderRadius.only(
                                            topLeft: const Radius.circular(15.0),
                                            topRight: const Radius.circular(15.0),
                                            bottomLeft:
                                                const Radius.circular(15.0),
                                            bottomRight:
                                                const Radius.circular(15.0),
                                          ),
                                          color: Colors.blue.shade100),
                                      child: GestureDetector(
                                        onTap: (){
                                          if(CouController.ConponsList[this.index!].save==true){
                                            CouController.ConponsList[this.index!].save=false;
                                            CouController.checkCoupons();
                                            print("dataher1");

                                          }
                                          else{
                                            CouController.ConponsList[this.index!].save=true;
                                            CouController.checkCoupons();
                                            print("dataher2");

                                          }
                                        },
                                        child: CouController.ConponsList[this.index!].save==true?
                                        Icon(
                                        FontAwesomeIcons.solidHeart,
                                        color:Colors.red

                                      ):
                                          Icon(
                                            FontAwesomeIcons.solidHeart,
                                            color:Colors.deepPurple.shade400,
                                          )
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

    );

  }

}
