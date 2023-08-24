import 'package:get/get.dart';

import '../Controllers/registerController.dart';


class RegisterViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterController());
  }
}
