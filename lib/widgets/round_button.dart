
import 'package:flutter/material.dart';
import 'package:untitled2/App_config/Colors.dart';

class RoundButton extends StatelessWidget {
  late final String title;
  late final bool loading;
  late final VoidCallback onpress;
  late final Color btncolor;
  RoundButton(
      {required this.title, this.loading = false, required this.onpress,required this.btncolor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        decoration: BoxDecoration(
          color: btncolor,
          borderRadius: BorderRadius.circular(12.0),
        ),
        height: 40,
        width: 200,
        child: Center(
            child: loading
                ? CircleAvatar()
                : Text(
              title,
              style: TextStyle(color: AppColors.white),
            )),
      ),
    );
  }
}
