import 'dart:ui';

import 'package:get/get.dart';

class Coupons {
  String? offPercentage;
  String? title;
  String? Expire;
  Color? color;// verified=>green, pending=>yellow, rejected=>red,

  Coupons(
      {this.title, this.offPercentage, this.Expire,this.color});

  Coupons.fromModel(
      String title, String offPercentage, String Expire,Color color) {
    this.title = title;
    this.color=color;
    this.offPercentage = offPercentage;
    this.Expire = Expire;

  }
}