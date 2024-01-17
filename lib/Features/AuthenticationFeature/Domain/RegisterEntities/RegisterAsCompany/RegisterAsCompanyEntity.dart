import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:his/Features/AuthenticationFeature/Data/RequestsModels/RegisterRequestsModels/RegisterRequest.dart';
import 'package:his/Features/AuthenticationFeature/_Constants/CompanyServices.dart';
import 'package:his/utils/Extensions.dart';

import '../../../../../utils/Resouces/StringsManager.dart';
import '../../../../_SharedDomain/Services/Service.dart';
import '../../../../_Widgets/InputField/InputField.dart';
import 'ServiceEntity.dart';

part 'RegisterAsCompanyEntity.freezed.dart';

@freezed
class RegisterAsCompanyEntity with _$RegisterAsCompanyEntity {
  const RegisterAsCompanyEntity._();

  const factory RegisterAsCompanyEntity(
          {@Default(null) bool? isActive,
          required InputField name,
          required InputField email,
          required InputField phoneNumber,
          required InputField password,
          required Map<CompanyService, ServiceEntity> services}) =
      _RegisterAsCompanyEntity;

  factory RegisterAsCompanyEntity.empty() => RegisterAsCompanyEntity(
      email: const InputField(value: StringManager.emptyStr, errorMsg: null),
      password: const InputField(value: StringManager.emptyStr, errorMsg: null),
      name: const InputField(value: StringManager.emptyStr, errorMsg: null),
      phoneNumber:
          const InputField(value: StringManager.emptyStr, errorMsg: null),
      services: allServices);

  RegisterAsCompanyReqModel toRegisterAsCompanyReqModel() =>
      RegisterAsCompanyReqModel(
          isActive: isActive,
          name: name.value,
          email: email.value,
          number: phoneNumber.value,
          password: password.value,
          rate: 0,
          services: services.toServiceMap());
}
