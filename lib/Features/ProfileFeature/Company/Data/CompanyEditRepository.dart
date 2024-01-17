import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/Features/_SharedData/AbstractDataRepository.dart';
import 'package:his/utils/FirebaseConstants.dart';

import '../../../AuthenticationFeature/Data/Repositories/AuthRepository.dart';
import '../Domain/CompanyEditInfoModel.dart';

class CompanyEditRepository extends AbstractRepository {
  Future<bool> updateData(CompanyEditBusinessInfoModel newData) async {
    fireStore
        .collection(firebaseConstants.companyDataCollection)
        .doc(AuthRepository().getCurrentUserID)
        .update({
      firebaseConstants.companyName: newData.name,
      firebaseConstants.companyNumber: newData.phoneNumber
    });
    return true;
  }
}

var companyEditRepositoryProvider = Provider((ref) => CompanyEditRepository());
