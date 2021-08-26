class RequestTokenModel {
  RequestTokenModel({
    this.success,
    this.requestToken,
    this.idUser,
  });

  bool? success;
  String? requestToken;
  int? idUser;

  factory RequestTokenModel.fromJson(Map<String, dynamic> json) =>
      RequestTokenModel(
        success: json["success"],
        requestToken: json["request_token"],
        idUser: json["id_user"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "request_token": requestToken,
        "id_user": idUser,
      };
}
