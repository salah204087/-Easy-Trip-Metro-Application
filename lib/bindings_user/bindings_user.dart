import 'package:get/get.dart';
import 'package:metro_app/controller_user/submit_user.dart';


class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(SubmitController());
  }
}