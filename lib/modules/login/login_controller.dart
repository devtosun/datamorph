import 'dart:convert';

import 'package:datamorph/data/model/user.dart';
import 'package:datamorph/data/repository/login_repository.dart';
import 'package:datamorph/modules/controllers/authentication_manager.dart';
import 'package:datamorph/modules/home/home_page.dart';
import 'package:datamorph/modules/login/login_page.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var isLoading = false.obs;
  final AuthenticationManager _authmanager = Get.put(AuthenticationManager());
  final LoginRepository loginRepository = Get.put(LoginRepository());

  var username = "".obs;
  var password = "".obs;

  void setUsername(String value) {
    username.value = value;
  }

  void setPassword(String value) {
    password.value = value;
  }

  Future<void> login() async {
    try {
      // Get.to(Login());

      isLoading(true);
      User user = User(username: username.value, password: password.value);
      await Future.delayed(Duration(seconds: 3));
            
      String token = await loginRepository.getToken(user);
      _authmanager.login(token);
      print('Token: $token');
    } catch (error) {
      print('Hata: $error');
    } finally {
      isLoading(false);
    }
  }
}
