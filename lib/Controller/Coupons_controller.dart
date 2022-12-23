import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:untitled2/App_config/Colors.dart';

import '../model/Coupons.dart';


class CouponsController extends GetxController{
  RxList<Coupons> ConponsList=<Coupons>[].obs;
  RxString dummyString="EXCLUSIVE".obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    addCoupons();
    chheckAuth();
  }

  void chheckAuth() async{
    FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    String data=await _firebaseAuth.currentUser!.getIdToken().toString();
    print("Controller: "+data.toString());
    _firebaseAuth.currentUser!.getIdToken().then((token) {
      assert(token != null);

      print("teken is: " + token);
    });
  }
  void addCoupons(){
    Coupons c=new Coupons(title: "Walgreens",offPercentage:"20",Expire: "Expires 23 Sep, 2022",color: AppColors.appbackgrapund);
    Coupons c1=new Coupons(title: "Medicine",offPercentage:"25",Expire: "Expires 23 Sep, 2022",color: AppColors.appbackgrapund2);
    Coupons c2=new Coupons(title: "Disprine",offPercentage:"40",Expire: "Expires 23 Sep, 2022",color: AppColors.appbackgrapund);

    ConponsList.value.add(c);
    ConponsList.value.add(c1);
    ConponsList.value.add(c2);
  }
}