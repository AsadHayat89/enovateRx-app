import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../App_config/Colors.dart';
class Discount_coupons extends StatefulWidget {
  String? discountPercent;
  String? ExpireDate;
  String? title;
  Color? color;
  Discount_coupons({Key? key,required this.title,required this.ExpireDate,required this.discountPercent,required this.color}) : super(key: key);

  @override
  State<Discount_coupons> createState() => _Discount_couponsState();
}

class _Discount_couponsState extends State<Discount_coupons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240.w,
      decoration: BoxDecoration(
        color: AppColors.appbackgrapund2,
        borderRadius:
        BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment:
        CrossAxisAlignment.end,
        mainAxisAlignment:
        MainAxisAlignment.end,
        children: [
          Container(
            width: 230.w,
            decoration: BoxDecoration(
                borderRadius: new BorderRadius
                    .only(
                    bottomRight:
                    const Radius
                        .circular(10.0),
                    topRight: const Radius
                        .circular(10.0)),
                color: widget.color),
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: 15.h,
                      left: 21.w),
                  child: Text(
                    "${widget.discountPercent}% Off on ${widget.title}",
                    style:
                    GoogleFonts.poppins(
                        fontWeight:
                        FontWeight
                            .bold,
                        color: Colors
                            .white,
                        fontSize:
                        14.sp),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 1, left: 21),
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons
                            .clock,
                        size: 18,
                        color:
                        Colors.white70,
                      ),
                      Padding(
                        padding:
                        EdgeInsets.only(
                            left: 5),
                        child: Text(
                          "${widget.ExpireDate}",
                          style: GoogleFonts
                              .poppins(
                              color: Colors
                                  .white,
                              fontSize:
                              12.sp),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 22.w,
                      top: 12.h),
                  child: Padding(
                    padding: EdgeInsets.only(bottom:14.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 23.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                  shape: BoxShape
                                      .circle,
                                  color: Colors
                                      .white38),
                              child: Icon(
                                FontAwesomeIcons
                                    .droplet,
                                size: 16,
                                color: Colors
                                    .white,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets
                                  .only(
                                  left: 6
                                      .w),
                              child:Container(
                                width: 23.w,
                                height: 23.h,
                                decoration: BoxDecoration(
                                    shape: BoxShape
                                        .circle,
                                    color: Colors
                                        .white38),
                                child: Icon(
                                  FontAwesomeIcons
                                      .solidHeart,
                                  size: 15,
                                  color: Colors
                                      .white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets
                                  .only(
                                  left: 6
                                      .w),
                              child:Container(
                                  width: 23.w,
                                  height: 23.h,
                                  decoration: BoxDecoration(
                                      shape: BoxShape
                                          .circle,
                                      color: Colors
                                          .white38),
                                  child: Image.asset("assets/graphic.png")
                              ),
                            ),

                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 14.w),
                          child: Container(
                            width: 24.w,
                            height: 24.h,
                            decoration: BoxDecoration(
                                shape: BoxShape
                                    .circle,
                                color: AppColors.appbackgrapund2),
                            child: Icon(
                              FontAwesomeIcons
                                  .check,
                              size: 16,
                              color: Colors
                                  .white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
