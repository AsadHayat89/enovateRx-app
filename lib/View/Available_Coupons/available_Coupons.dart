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
import 'Coupons_detail.dart';

class Avaiable_Coupons extends StatelessWidget {
  const Avaiable_Coupons({Key? key}) : super(key: key);

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
                  Padding(
                    padding: EdgeInsets.only(top: 72.h),
                    child: Container(
                      child: Column(
                        children: [

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
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Your Exclusive Offers",
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w800,
                                                fontSize: 20.sp,
                                                color:
                                                    AppColors.appbackgrapund),
                                          ),
                                          Text(
                                            "PC Ultra Liquid Dsh 638mL Selected Varieties",
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12.sp,
                                                color:
                                                    AppColors.appbackgrapund),
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
                                              return GestureDetector(
                                                onTap: (){

                                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => CouponsDetails()));

                                                },
                                                  child: Coupons_detail_widget(index:index,Limit:CouController.ConponsList[index].Limit,image:CouController.ConponsList[index].image,time:CouController.ConponsList[index].Expire,Exlusive: CouController.ConponsList[index].Exclusive,title: CouController.ConponsList[index].title,save: CouController.ConponsList[index].save,savePrice: CouController.ConponsList[index].savePrice,));
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
