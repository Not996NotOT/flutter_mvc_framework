import 'package:flutter_mvc_framework/routers/RouterEnum.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class BaseController extends GetxController {
  gotoPath(RouterEnum routerEnum) {
    Get.toNamed(routePath[routerEnum]!);
  }
}
