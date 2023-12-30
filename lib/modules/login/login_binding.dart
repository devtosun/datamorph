import 'package:datamorph/data/repository/login_repository.dart';
import 'package:datamorph/modules/controllers/authentication_manager.dart';
import 'package:datamorph/modules/login/login_controller.dart';
import 'package:get/instance_manager.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());

    // Get.lazyPut(() => AuthenticationManager());
    // Get.lazyPut(() => LoginRepository());
  }
}
