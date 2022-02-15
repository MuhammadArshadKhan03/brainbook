class UserModel {
  final int code;
  final String msg;
  final _UserData data;
  final bool success;
  final int uerId;

  UserModel({
    required this.code,
    required this.msg,
    required this.data,
    required this.success,
    required this.uerId,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      code: json["code"],
      msg: json["msg"],
      data: _UserData.fromJson(json["data"]),
      success: json["success"],
      uerId: json["userId"]
    );
  }
}

class _UserData {
  final String id;
  final String email;
  final String? state;

  _UserData({
    required this.id,
    required this.email,
    this.state,
  });

  factory _UserData.fromJson(Map<String, dynamic> json) {
    return _UserData(
      id: json["id"],
      email: json["email"],
      state: json["state"],
    );
  }
}
