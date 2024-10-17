import 'package:get/get.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  RxBool isPasswordVisible = true.obs;
  RxBool checkBox = false.obs;

  void togglePasswordVisibility() =>
      isPasswordVisible(!isPasswordVisible.value);

  
}
