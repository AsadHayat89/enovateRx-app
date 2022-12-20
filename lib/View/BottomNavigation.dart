import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../App_config/Colors.dart';
import '../Controller/bottom_Navigation_Controller.dart';
import 'Available_Coupons/available_Coupons.dart';
import 'DashBoard/dashBoard.dart';
import 'InProgress/Progress.dart';
import 'Saved_coupons/Saved_coupons.dart';
class MyNavigationBar extends StatelessWidget {
  int _selectedIndex = 1;
  var bottomNavBar = Get.put(BottomNavController());

  static List<Widget> _widgetOptions = <Widget>[
    DashBoard(),
    Avaiable_Coupons(),
    ProgressPage(),
    Saved_Coupons(),
    ProgressPage(),
  ];

  void _onItemTapped(int index) {
    bottomNavBar.selectedIndex.value = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
              ()=> Center(
            child: _widgetOptions.elementAt(bottomNavBar.selectedIndex.value),
          ),
        ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
            showUnselectedLabels: true,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  label: "home",
                  icon: Padding(
                    padding: EdgeInsets.only(bottom: 3),
                    child: Icon(FontAwesomeIcons.home,size: 24,),
                  ),
                  // title: Text('Home'),
                  backgroundColor: AppColors.white),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(bottom: 3),
                    child: Icon(FontAwesomeIcons.gauge,size: 24,),
                  ),
                  label: "Coupons",
                  // title: Text('Search'),
                  backgroundColor: AppColors.white),
              BottomNavigationBarItem(
                label: "Pharmacies",
                icon: Padding(
                  padding:EdgeInsets.only(bottom: 3),
                  child: Icon(FontAwesomeIcons.capsules,size: 24,),
                ),
                backgroundColor: AppColors.white,
              ),
              BottomNavigationBarItem(
                label: "Saved",
                icon: Padding(
                  padding:EdgeInsets.only(bottom: 3),
                  child: Icon(FontAwesomeIcons.solidHeart,size: 24,),
                ),
                backgroundColor: AppColors.white,
              ),
              BottomNavigationBarItem(
                label: "Profile",
                icon: Padding(
                  padding:EdgeInsets.only(bottom: 3),
                  child: Icon(FontAwesomeIcons.solidUser,size: 24,),
                ),
                backgroundColor: AppColors.white,
              ),

            ],
            type:  BottomNavigationBarType.fixed,
            currentIndex: bottomNavBar.selectedIndex.value,
            selectedItemColor: AppColors.appbackgrapund,
            unselectedItemColor: Colors.grey,
            selectedFontSize: 10.sp,
            unselectedFontSize:10.sp,
            iconSize: 40,
            onTap: _onItemTapped,
            elevation: 5),
      ),
    );
  }
}
class TopIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _TopIndicatorBox();
  }
}

class _TopIndicatorBox extends BoxPainter {
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    Paint _paint = Paint()
      ..color = Colors.cyan
      ..strokeWidth = 5
      ..isAntiAlias = true;

    canvas.drawLine(offset, Offset(cfg.size!.width + offset.dx, 0), _paint);
  }
}