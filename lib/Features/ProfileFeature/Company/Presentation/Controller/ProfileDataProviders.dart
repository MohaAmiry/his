import 'package:his/Features/AuthenticationFeature/Data/Repositories/DataRepository.dart';
import 'package:his/Features/ProfileFeature/Company/Domain/CompanyProfile.dart';
import 'package:his/Features/_SharedDomain/Users/UsersResponses.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ProfileDataProviders.g.dart';

@riverpod
Future<CompanyResponseModel> companyProfileData(
    CompanyProfileDataRef ref, String companyID) async {
  return ref.read(dataRepositoryProvider).getCompanyDataByID(companyID);
}
