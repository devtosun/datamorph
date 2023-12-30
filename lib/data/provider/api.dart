import 'dart:convert';
import 'package:http/http.dart' as http;

const baseUrl = '192.168.1.93:3000';
const prefix = '/api/';

class DataMorphClient {
  final http.Client httpClient = http.Client();
  // DataMorphClient({required this.httpClient});

  // getAll() async {
  //   try {
  //     var response = await httpClient.get(baseUrl);
  //     if (response.statusCode == 200) {
  //       Iterable jsonResponse = json.decode(response.body);
  //       List<MyModel> listMyModel =
  //           jsonResponse.map((model) => MyModel.fromJson(model)).toList();
  //       // listMyModel.removeRange(2, listMyModel.length);
  //       // List<MyModel> listMyModel = new List<MyModel>.empty();
  //       return listMyModel;
  //     } else
  //       print('erro');
  //   } catch (_) {}
  // }

  // getId(id) async {
  //   try {
  //     final httpsUri = Uri.https(baseUrl, 'api/login', {'limit': '10'});
  //     var response = await httpClient.get(httpsUri);
  //     if (response.statusCode == 200) {
  //       //Map<String, dynamic> jsonResponse = json.decode(response.body);
  //     } else
  //       print('erro -get');
  //   } catch (_) {}
  // }

  post(String path, Map<String, String>? headers, String? body) async {
    try {
      print('Before Uri: $path');
      path = prefix + path;
      final httpsUri = Uri.http(baseUrl, path);

      print('Before POST: $httpsUri');
      print('Header: $headers');
      print('Body: $body');
      var response =
          await httpClient.post(httpsUri, headers: headers, body: body);
      print('ResponseStatusCode: ${response.statusCode}');
      print('ResponseBody: ${json.decode(response.body)}');
      if (response.statusCode == 200) {
        print('ResponseStatusCode: ${response.statusCode}');
        print('ResponseBody: ${json.decode(response.body)}');
        Map<String, dynamic> jsonResponse = json.decode(response.body);
        return jsonResponse;
      } else {
        print('erro -get');
      }
    } catch (ex) {
      print('POST err: $ex');
    }
  }
}
