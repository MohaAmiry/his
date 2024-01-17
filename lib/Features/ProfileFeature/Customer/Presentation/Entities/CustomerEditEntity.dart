import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../_Widgets/InputField/MaterialInputField.dart';

part 'CustomerEditEntity.freezed.dart';

@freezed
class CustomerEditEntity with _$CustomerEditEntity {
  const CustomerEditEntity._();

  const factory CustomerEditEntity(
      {required MaterialInputField name,
      required MaterialInputField phoneNumber}) = _CustomerEditEntity;
}
