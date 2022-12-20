import 'package:flutter/material.dart';
import 'package:untitled2/App_config/Colors.dart';

class ProgressPage extends StatefulWidget {
  const ProgressPage({Key? key}) : super(key: key);

  @override
  State<ProgressPage> createState() => _ProgressState();
}

class _ProgressState extends State<ProgressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appbackgrapund,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text("In Progress....",style: TextStyle(color:Colors.white,fontSize: 24,fontWeight: FontWeight.bold),))
        ],
      ),
    );
  }
}
