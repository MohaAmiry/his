import 'package:freezed_annotation/freezed_annotation.dart';

part 'LoginEntityRequest.g.dart';

@JsonSerializable()
class LoginEntityRequest {
  final String email;
  final String password;

  LoginEntityRequest({required this.email, required this.password});

  factory LoginEntityRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginEntityRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LoginEntityRequestToJson(this);
}
