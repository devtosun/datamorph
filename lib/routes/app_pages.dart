import 'package:datamorph/modules/home/home_binding.dart';
import 'package:datamorph/modules/home/home_page.dart';
import 'package:datamorph/modules/login/login_binding.dart';
import 'package:datamorph/modules/login/login_page.dart';
import 'package:datamorph/routes/app_routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: Routes.initial,
        page: () => const Home(),
        binding: HomeBinding()),
    GetPage(
        name: Routes.login,
        page: () => const Login(),
        binding: LoginBinding()),
  ];
}
