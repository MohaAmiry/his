import 'package:his/ExceptionHandler/AppException.dart';
import 'package:his/ExceptionHandler/MessageEmitter.dart';
import 'package:his/ExceptionHandler/MessageTypes.dart';
import 'package:his/Features/AuthenticationFeature/Data/Repositories/AuthController.dart';
import 'package:his/Features/AuthenticationFeature/Data/Repositories/DataRepository.dart';
import 'package:his/Features/ProfileFeature/Company/Data/CompanyEditRepository.dart';
import 'package:his/Features/ProfileFeature/Company/Domain/CompanyEditInfoModel.dart';
import 'package:his/Features/ProfileFeature/Customer/Data/CustomerEditRepository.dart';
import 'package:his/Features/ProfileFeature/Data/ProfileRepository.dart';
import 'package:his/utils/Extensions.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../AuthenticationFeature/Domain/RegisterEntities/RegisterAsCompany/ServiceEntity.dart';
import '../../_SharedDomain/Services/Service.dart';
import '../Company/Presentation/Controller/CompanyProfileController.dart';
import '../Customer/Domain/CustomerEditModel.dart';

part 'EditConfirmationController.g.dart';

@riverpod
class EditConfirmationController extends _$EditConfirmationController {
  @override
  FutureOr<bool> build() async {
    return false;
  }

  Future<void> updateService(
      Map<CompanyService, ServiceEntity> services) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async => await ref
        .read(profileRepositoryProvider)
        .updateServices(services.toServiceMap()));
    if (state.hasValue && !state.hasError) {
      ref.refresh(companyProfileControllerProvider);
    }
  }

  Future<void> updateData(CompanyEditBusinessInfoModel data) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async =>
        await ref.read(companyEditRepositoryProvider).updateData(data));
    if (state.hasValue && !state.hasError) {
      ref.refresh(companyProfileControllerProvider);
    }
  }

  Future<void> updateCustomerData(CustomerEditModel editModel) async {
    state = const AsyncLoading();
    ref
        .read(messageEmitterProvider.notifier)
        .setMessage(PendingMessage("Pending Edit"));
    state = await AsyncValue.guard(() async => await ref
        .read(customerEditRepositoryProvider)
        .updateCustomerData(editModel));
    if (state.hasValue && !state.hasError) {
      ref
          .read(messageEmitterProvider.notifier)
          .setMessage(SuccessfulMessage("Edit Completed"));
      ref.invalidate(authControllerProvider);
    }
    if (state.hasError) {
      ref.read(messageEmitterProvider.notifier).setMessage(
          FailedMessage(AppException(message: state.error.toString())));
    }
  }
}
