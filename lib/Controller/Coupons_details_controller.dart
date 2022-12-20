import 'package:get/get.dart';
import 'package:untitled2/App_config/Colors.dart';

import '../model/Coupons.dart';
import '../model/Coupons_details.dart';


class CouponsDetailController extends GetxController{
  RxList<Coupons_details> ConponsList=<Coupons_details>[].obs;
  RxString availableCoupons="0".obs;
  RxString availableCouponsPrice="0".obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    addCoupons();
    checkCoupons();
  }

  void checkCoupons(){

    double price=0;
    int countity=0;
      for(int i=0;i<ConponsList.length;i++){
        if(ConponsList[i].save==true){
          countity=countity+1;
          double myDouble = double.parse(ConponsList[i].savePrice!);
          price=price+myDouble;
        }
      }
      print("total Price: "+price.toString());
      print("TOtal Countity: "+countity.toString());
    availableCoupons.value=countity.toString();
    availableCouponsPrice.value=price.toString();
  }

  void addCoupons(){
    Coupons_details c=new Coupons_details(title: "Omega 3 Fish Oil Capsule",image: "assets/medicine.png",Limit: "4",Expire: "4",savePrice: "6.8",save: false,Exclusive: true);
    Coupons_details c1=new Coupons_details(title: "Nutrition Vegan Vitamin B12",image: "assets/medicine.png",Limit: "4",Expire: "4",savePrice: "1.8",save: false,Exclusive: false);
    Coupons_details c2=new Coupons_details(title: "PC Facial Tissue 3 ply 78s 6pk",image: "assets/medicine.png",Limit: "4",Expire: "4",savePrice: "7.9",save: false,Exclusive: true);

    ConponsList.add(c);
    ConponsList.add(c1);
    ConponsList.add(c2);
  }
}