import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController{
  RxString email="".obs;
  RxString password="".obs;
  RxString city="".obs;
  RxString address="".obs;
  RxString Phone="".obs;
  RxBool emailError=false.obs;

  RxBool PasswordError=false.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  void SignUp() async{
    FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    try {
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email.value,
        password: password.value,
      );
      print("User Email "+userCredential.user!.email.toString());
    } catch (e) {
      throw (e);
    }

  }
}