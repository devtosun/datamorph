import 'dart:convert';

import 'package:datamorph/data/model/user.dart';
import 'package:datamorph/data/provider/api.dart';
import 'package:get/get.dart';


class LoginRepository {
  final DataMorphClient apiClient = Get.put(DataMorphClient());

// final LoginRepository loginRepository = 

  // LoginRepository({required this.apiClient});

  getToken(User user) {
    print('Repo UserData: ${jsonEncode(user.toJson())}');
    Map<String, String> headers = {'Content-Type': 'application/json'};
    return apiClient.post("login", headers, jsonEncode(user.toJson())).token;
  }
}
