import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/Features/AuthenticationFeature/Data/Repositories/AuthRepository.dart';
import 'package:his/Features/_SharedData/AbstractDataRepository.dart';
import 'package:his/utils/FirebaseConstants.dart';

import '../Domain/CustomerEditModel.dart';

class CustomerEditRepository extends AbstractRepository{

  Future<bool> updateCustomerData(CustomerEditModel editModel) async {
    try {
      await fireStore
          .collection(firebaseConstants.customerDataCollection)
          .doc(AuthRepository().getCurrentUserID)
          .update({
        firebaseConstants.customerName: editModel.name,
        firebaseConstants.customerNumber: editModel.phoneNumber
      });

      var s = (await fireStore
          .collection(firebaseConstants.customerDataCollection)
          .doc(AuthRepository().getCurrentUserID)
          .get())
          .get(firebaseConstants.customerName);
      print("inside update customer data, name is: ${s}");
      return true;
    } on Exception {
      rethrow;
    }
  }
}

var customerEditRepositoryProvider = Provider((ref) => CustomerEditRepository());