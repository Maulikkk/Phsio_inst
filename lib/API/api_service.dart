import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:phsio_ins/Models/loginmodel.dart';

class APIService {
  Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
    Uri url = "http://resreq.in/api/login" as Uri;

    final response = await http.post(url, body: requestModel.toJson());
    if (response.statusCode == 200 || response.statusCode == 400) {
      return LoginResponseModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('failed to load data');
    }
  }
}
