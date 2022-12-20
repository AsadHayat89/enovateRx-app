import 'dart:ui';

import 'package:get/get.dart';

class Coupons_details {
  String? Limit;
  String? title;
  String? Expire;
  bool? Exclusive;
  bool? save;
  String? savePrice;
  String? image;// verified=>green, pending=>yellow, rejected=>red,

  Coupons_details(
      {this.title,this.image, this.Limit, this.Expire,this.Exclusive,this.save,this.savePrice});

  Coupons_details.fromModel(
      String title, String offPercentage, String Expire,Color color) {
    this.title = title;
    this.Limit=Limit;
    this.image=image;
    this.Expire = Expire;
    this.Exclusive = Exclusive;
    this.save = save;
    this.savePrice = savePrice;
  }
}