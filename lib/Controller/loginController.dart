import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../View/DashBoard/dashBoard.dart';

class LoginController  extends GetxController{
  RxString Email="".obs;
  RxString Password="".obs;
  RxBool emailError=false.obs;

  RxBool PasswordError=false.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  Future<bool> login() async{
    FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    try {
      final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: Email.value,
        password: Password.value,
      );
      if(userCredential.user!=null){
        print("USer: "+userCredential.user!.email.toString());
        return true;
      }

    } catch (e) {
      return false;
    }
    return false;
  }

}