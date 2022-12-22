import 'package:get/get.dart';
import 'package:untitled2/App_config/Colors.dart';

import '../model/Coupons.dart';
import '../model/Pharmacies.dart';


class PharmaciesController extends GetxController{
  RxList<Pharmacies> PharmaciesList=<Pharmacies>[].obs;
  RxString dummyString="EXCLUSIVE".obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    addPharmacies();
  }

  void addPharmacies(){
    Pharmacies c=new Pharmacies(Price: "99",image: "assets/pharmacyDetail.png",Address: "32-B Kings Road, NYC",Expire:"15",BestOffer: true,save:false);
    Pharmacies c1=new Pharmacies(Price: "19",image: "assets/pharmacyDetail.png",Address: "32-B Kings Road, NYC",Expire:"19",BestOffer: true,save:true);
    Pharmacies c2=new Pharmacies(Price: "9",image: "assets/pharmacyDetail.png",Address: "32-B Kings Road, NYC",Expire:"5",BestOffer: false,save:true);
    Pharmacies c3=new Pharmacies(Price: "91",image: "assets/pharmacyDetail.png",Address: "32-B Kings Road, NYC",Expire:"2",BestOffer: true,save:false);
    Pharmacies c4=new Pharmacies(Price: "55",image: "assets/pharmacyDetail.png",Address: "32-B Kings Road, NYC",Expire:"25",BestOffer: false,save:false);
    PharmaciesList.value.add(c);
    PharmaciesList.value.add(c1);
    PharmaciesList.value.add(c2);
    PharmaciesList.value.add(c3);
    PharmaciesList.value.add(c4);
  }
}