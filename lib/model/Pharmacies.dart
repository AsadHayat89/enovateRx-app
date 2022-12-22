import 'dart:ui';

import 'package:get/get.dart';

class Pharmacies {
  String? Address;
  String? Price;
  String? Expire;
  bool? BestOffer;
  bool? save;
  String? image;// verified=>green, pending=>yellow, rejected=>red,

  Pharmacies(
      {this.Price,this.image, this.Address, this.Expire,this.BestOffer,this.save});

  Pharmacies.fromModel(
      String image,String Price,String Address,String Expire,bool BestOffer,bool save) {
    this.Price = Price;
    this.Address=Address;
    this.image=image;
    this.save=save;
    this.Expire = Expire;
    this.BestOffer = BestOffer;
    this.save = save;
  }
}