import 'package:get/get.dart';

import '../Controllers/loginController.dart';


class LoginViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
