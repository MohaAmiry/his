import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:his/ExceptionHandler/AppException.dart';
import 'package:his/ExceptionHandler/MessageEmitter.dart';
import 'package:his/ExceptionHandler/MessageTypes.dart';
import 'package:his/Features/AuthenticationFeature/Data/Repositories/DataRepository.dart';
import 'package:his/Features/_SharedDomain/Users/UsersResponses.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'AdminPendingRequestsController.g.dart';

@riverpod
class AdminPendingRequestsController extends _$AdminPendingRequestsController {
  @override
  FutureOr<IList<CompanyResponseModel>> build() async {
    return ref.read(dataRepositoryProvider).getCompaniesWherePending();
  }

  Future<void> rejectCompany(String companyID) async {
    state = const AsyncLoading();
    ref
        .read(messageEmitterProvider.notifier)
        .setMessage(PendingMessage("Waiting Request"));
    var requestResult = await AsyncValue.guard(() async =>
        await ref.read(dataRepositoryProvider).rejectCompanyByID(companyID));

    if (requestResult.hasValue) {
      ref
          .read(messageEmitterProvider.notifier)
          .setMessage(SuccessfulMessage("Successfully Rejected User"));
    } else if (requestResult.hasError) {
      ref.read(messageEmitterProvider.notifier).setMessage(
          FailedMessage(const AppException(message: "Failed To Reject User")));
    }

    ref.invalidateSelf();
  }

  Future<void> activateUser(String companyID) async {
    state = const AsyncLoading();
    ref
        .read(messageEmitterProvider.notifier)
        .setMessage(PendingMessage("Waiting Request"));
    var requestResult = await AsyncValue.guard(() async =>
        await ref.read(dataRepositoryProvider).activateCompanyByID(companyID));

    if (requestResult.hasValue) {
      ref
          .read(messageEmitterProvider.notifier)
          .setMessage(SuccessfulMessage("Successfully Activated User"));
    } else if (requestResult.hasError) {
      ref.read(messageEmitterProvider.notifier).setMessage(FailedMessage(
          const AppException(message: "Failed To Activate User")));
    }

    ref.invalidateSelf();
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    await Future.delayed(const Duration(seconds: 1));
    ref.invalidateSelf();
  }
}
