import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../App_config/Colors.dart';
import '../../Controller/Coupons_controller.dart';
import '../../Controller/Coupons_details_controller.dart';
import '../../widgets/Coupons_detail_widget.dart';
import '../../widgets/disscount_coupons.dart';
import '../../widgets/saved_coupons_widget.dart';

class Saved_Coupons extends StatelessWidget {
  const Saved_Coupons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var CouController = Get.put(CouponsDetailController());
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
                                child: Icon(Icons.arrow_back_sharp),
                              ),

                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 13.h),
                          child: Container(
                            height: Get.height-70.h,
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
                                  padding: EdgeInsets.only(
                                      top: 15.h, left: 15.w, right: 15.w),
                                  child: Container(
                                    height: 79.h,
                                    width: Get.width,
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
                                        color: Colors.blue.shade100),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Padding(
                                            padding: EdgeInsets.only(left:10.w),
                                            child: Container(
                                              width: 60.h,
                                              height: 60.h,
                                              decoration: new BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Icon(FontAwesomeIcons.solidStar,size: 30,color: Colors.purple,),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left:14.w),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "You’ve ${CouController.availableCoupons} coupons saved",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 15.sp,
                                                    color:
                                                    AppColors.appbackgrapund),
                                              ),
                                              Text(
                                                "est. value \$${CouController.availableCouponsPrice}",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14.sp,
                                                    color:
                                                    AppColors.appbackgrapund),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 70.h),
                                    child: Container(
                                      child: ListView.builder(
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount: CouController.ConponsList.length,
                                          itemBuilder: (BuildContext context, int index) {
                                            if( CouController.ConponsList[index].save!){
                                              return Saved_Coupons_detail_widget(index:index,Limit:CouController.ConponsList[index].Limit,image:CouController.ConponsList[index].image,time:CouController.ConponsList[index].Expire,Exlusive: CouController.ConponsList[index].Exclusive,title: CouController.ConponsList[index].title,save: CouController.ConponsList[index].save,savePrice: CouController.ConponsList[index].savePrice,);
                                            }
                                            else{
                                              return Container();
                                            }
                                          }),
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
      ),
    );
  }
}
