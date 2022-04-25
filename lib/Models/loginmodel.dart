class LoginResponseModel {
  final String token;
  final String error;
  LoginResponseModel({required this.error, required this.token});

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
      error: json['token'] ?? "",
      token: json['token'] ?? "",
    );
  }
}

class LoginRequestModel {
  String? email;
  String? password;
  LoginRequestModel({this.password, this.email});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'email': email?.trim(),
      'password': password?.trim(),
    };
    return map;
  }
}
