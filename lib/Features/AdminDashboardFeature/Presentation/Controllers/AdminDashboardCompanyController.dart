import 'package:his/ExceptionHandler/AppException.dart';
import 'package:his/ExceptionHandler/MessageEmitter.dart';
import 'package:his/ExceptionHandler/MessageTypes.dart';
import 'package:his/Features/AdminDashboardFeature/Data/AdminDashboardRepository.dart';
import 'package:his/Features/AdminDashboardFeature/Domain/AdminDashboardCompanyModel.dart';
import 'package:his/Features/AuthenticationFeature/Data/Repositories/DataRepository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'AdminDashboardCompanyController.g.dart';

@riverpod
class AdminDashboardCompanyController
    extends _$AdminDashboardCompanyController {
  @override
  FutureOr<List<AdminDashboardCompanyModel>> build() async {
    return ref
        .read(adminDashboardRepositoryProvider)
        .getAllAdminDashboardCompanyData();
  }

  Future<void> changeCompanyState(String companyID, bool toState) async {
    state = const AsyncLoading();
    ref
        .read(messageEmitterProvider.notifier)
        .setMessage(PendingMessage("Waiting Change State"));
    var result = await AsyncValue.guard(() async => await ref
        .read(adminDashboardRepositoryProvider)
        .setCompanyState(companyID, toState));
    if (result.hasValue) {
      ref
          .read(messageEmitterProvider.notifier)
          .setMessage(SuccessfulMessage("Successfully Change company State"));
    } else if (result.hasError) {
      ref.read(messageEmitterProvider.notifier).setMessage(
          FailedMessage(AppException(message: result.error.toString())));
    }
    ref.invalidateSelf();
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    await Future.delayed(const Duration(seconds: 1));
    ref.invalidateSelf();
  }
}
