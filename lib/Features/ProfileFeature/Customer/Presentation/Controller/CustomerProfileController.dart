import 'package:his/Features/AuthenticationFeature/Data/Repositories/AuthController.dart';
import 'package:his/Features/AuthenticationFeature/Data/Repositories/AuthRepository.dart';
import 'package:his/Features/AuthenticationFeature/Data/Repositories/DataRepository.dart';
import 'package:his/Features/AuthenticationFeature/Domain/User/UserRole.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'CustomerProfileController.g.dart';

@riverpod
class CustomerProfileController extends _$CustomerProfileController {
  @override
  FutureOr<Customer> build() async {
    return ref.watch(authControllerProvider).requireValue as Customer;
  }
}
