/*
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:his/utils/Constants/ConstantServices.dart';
import '../lib/Features/_Widgets/InputField/InputField.dart';
import '../lib/Features/AuthenticationFeature/Domain/ServiceEntity/RequestModel.dart';
import '../lib/utils/Resouces/StringsManager.dart';

part '../lib/Features/AuthenticationFeature/Domain/RegisterEntities/RegisterAsCompanyEntity.freezed.dart';

@freezed
class RegisterAsCompanyEntity with _$RegisterAsCompanyEntity {
  const RegisterAsCompanyEntity._();

  const factory RegisterAsCompanyEntity(
      {required InputField name,
      required InputField email,
      required InputField phoneNumber,
      required InputField password,
      required List<Service> services}) = _RegisterAsCompanyEntity;

  factory RegisterAsCompanyEntity.empty() => RegisterAsCompanyEntity(
      email: const InputField(value: StringManager.emptyStr, errorMsg: null),
      password: const InputField(value: StringManager.emptyStr, errorMsg: null),
      name: const InputField(value: StringManager.emptyStr, errorMsg: null),
      phoneNumber:
          const InputField(value: StringManager.emptyStr, errorMsg: null),
      services: [...allServices]);

  RegisterAsCompanyReq toRegisterCustomerReq() => (
        name: name.value,
        email: email.value,
        phoneNumber: phoneNumber.value,
        password: password.value
      );
}

typedef RegisterAsCompanyReq = ({
  String name,
  String email,
  String phoneNumber,
  String password
});
*/