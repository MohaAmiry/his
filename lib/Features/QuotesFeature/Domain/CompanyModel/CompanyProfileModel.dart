import '../../../_SharedDomain/Services/Service.dart';

class CompanyProfileModel {
  String uid;
  String email;
  String phoneNumber;
  double rate;
  List<ServiceModel> serviceModel;

  CompanyProfileModel(
      this.uid, this.email, this.phoneNumber, this.rate, this.serviceModel);
}
