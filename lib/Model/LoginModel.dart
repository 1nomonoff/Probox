class Loginmodel {
  final bool success;
  final int status;
  final Data data;
  final String message;
  final List<String> errors;

  Loginmodel({
    required this.success,
    required this.status,
    required this.data,
    required this.message,
    required this.errors,
  });

  factory Loginmodel.fromJson(Map<String, dynamic> json) {
    return Loginmodel(
      success: json['success'],
      status: json['status'],
      data: Data.fromJson(json['data']),
      message: json['message'],
      errors: List<String>.from(json['errors']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'status': status,
      'data': data.toJson(),
      'message': message,
      'errors': errors,
    };
  }

  login21({required String phone, required code}) {}
}

class Data {
  final String token;
  final String phone;

  Data({
    required this.token,
    required this.phone,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      token: json['token'],
      phone: json['phone'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'phone': phone,
    };
  }
}
