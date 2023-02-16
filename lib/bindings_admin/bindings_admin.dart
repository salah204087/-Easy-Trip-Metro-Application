import 'package:get/get.dart';
import 'package:metro_app/controller_admin/submit_admin.dart';


class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(SubmitController());
  }
}