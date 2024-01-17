import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:his/Features/AuthenticationFeature/Data/RequestsModels/RegisterRequestsModels/RegisterRequest.dart';
import 'package:his/Features/AuthenticationFeature/_Constants/CompanyServices.dart';
import 'package:his/Features/_Widgets/InputField/MaterialInputField.dart';
import 'package:his/utils/Extensions.dart';

import '../../../../../../utils/Resouces/StringsManager.dart';
import '../../../../_Widgets/InputField/InputField.dart';

part 'CompanyEditBusinessEntity.freezed.dart';

@freezed
class CompanyEditBusinessEntity with _$CompanyEditBusinessEntity {
  const CompanyEditBusinessEntity._();

  const factory CompanyEditBusinessEntity(
      {required MaterialInputField name,
      required MaterialInputField phoneNumber}) = _CompanyEditBusinessEntity;
}
