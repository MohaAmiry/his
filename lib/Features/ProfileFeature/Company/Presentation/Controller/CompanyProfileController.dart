import 'package:his/Features/AuthenticationFeature/Data/Repositories/AuthRepository.dart';
import 'package:his/Features/AuthenticationFeature/Data/Repositories/DataRepository.dart';
import 'package:his/Features/_SharedDomain/Users/UsersResponses.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'CompanyProfileController.g.dart';

@riverpod
class CompanyProfileController extends _$CompanyProfileController {
  @override
  FutureOr<CompanyResponseModel> build() async {
    return ref
        .read(dataRepositoryProvider)
        .getCompanyDataByID(ref.read(authRepositoryProvider).getCurrentUserID);
  }
}
