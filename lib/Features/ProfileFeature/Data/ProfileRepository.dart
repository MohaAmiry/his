import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/Features/AuthenticationFeature/Data/Repositories/AuthRepository.dart';
import 'package:his/Features/_SharedData/AbstractDataRepository.dart';
import 'package:his/utils/FirebaseConstants.dart';

import '../../AuthenticationFeature/Data/RequestsModels/RegisterRequestsModels/RegisterRequest.dart';
import '../../_SharedDomain/Services/Service.dart';

class _ProfileRepository extends AbstractRepository {
  Ref ref;

  _ProfileRepository(this.ref);

  Future<bool> updateServices(
      Map<CompanyService, ServiceModel> newServices) async {
    RegisterAsCompanyReqModel s = RegisterAsCompanyReqModel(
        isActive: false,
        name: '',
        email: '',
        number: '',
        password: '',
        rate: 2,
        services: newServices);
    fireStore
        .collection(firebaseConstants.companyDataCollection)
        .doc(ref.read(authRepositoryProvider).getCurrentUserID)
        .update({
      firebaseConstants.companyServices:
          s.toJson()[firebaseConstants.companyServices]
    });
    return true;
  }
}

var profileRepositoryProvider = Provider((ref) => _ProfileRepository(ref));
