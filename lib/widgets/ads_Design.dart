import 'package:flutter/material.dart';
import 'package:get/get.dart';
class adsDesign extends StatefulWidget {
  const adsDesign({Key? key}) : super(key: key);

  @override
  State<adsDesign> createState() => _adsDesignState();
}

class _adsDesignState extends State<adsDesign> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 200,
      color: Colors.pink,
    );
  }
}
