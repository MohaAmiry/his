import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:his/Features/AuthenticationFeature/Data/RequestsModels/RegisterRequestsModels/RegisterRequest.dart';
import '../../../../../utils/Resouces/StringsManager.dart';
import '../../../../_Widgets/InputField/InputField.dart';

part 'RegisterAsCustomerEntity.freezed.dart';

@freezed
class RegisterAsCustomerEntity with _$RegisterAsCustomerEntity {
  const RegisterAsCustomerEntity._();

  const factory RegisterAsCustomerEntity(
      {required InputField name,
      required InputField email,
      required InputField phoneNumber,
      required InputField password}) = _RegisterAsCustomerEntity;

  factory RegisterAsCustomerEntity.empty() => const RegisterAsCustomerEntity(
      email: InputField(value: StringManager.emptyStr, errorMsg: null),
      password: InputField(value: StringManager.emptyStr, errorMsg: null),
      name: InputField(value: StringManager.emptyStr, errorMsg: null),
      phoneNumber: InputField(value: StringManager.emptyStr, errorMsg: null));

  RegisterAsCustomerReqModel toRegisterCustomerReq() =>
      RegisterAsCustomerReqModel(
          name: name.value,
          email: email.value,
          number: phoneNumber.value,
          password: password.value);
}
