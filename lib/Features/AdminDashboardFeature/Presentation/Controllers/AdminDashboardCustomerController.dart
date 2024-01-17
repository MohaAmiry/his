import 'package:his/Features/AdminDashboardFeature/Data/AdminDashboardRepository.dart';
import 'package:his/Features/AdminDashboardFeature/Domain/AdminDashboardCustomerModel.dart';
import 'package:his/Features/AuthenticationFeature/Data/Repositories/DataRepository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'AdminDashboardCustomerController.g.dart';

@riverpod
class AdminDashboardCustomerController
    extends _$AdminDashboardCustomerController {
  @override
  FutureOr<List<AdminDashboardCustomerModel>> build() async {
    return ref.read(adminDashboardRepositoryProvider).getAllAdminDashboardCustomerData();
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    await Future.delayed(const Duration(seconds: 1));
    ref.invalidateSelf();
  }
}
