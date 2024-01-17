import 'package:his/utils/Enums.dart';

import '../Requests/RequestModel.dart';

class QuoteDisplayEntity {
  DateTime date;
  RequestModel requestModel;
  int numberOfUnits;
  String companyID;
  String companyName;
  String customerID;
  String customerName;
  double totalPrice;
  double rate;
  QuoteStatus status;

  QuoteDisplayEntity(
      {required this.date,
      required this.requestModel,
      required this.numberOfUnits,
      required this.companyID,
      required this.companyName,
      required this.customerID,
      required this.customerName,
      required this.totalPrice,
      required this.rate,
      required this.status});

  factory QuoteDisplayEntity.testDoorValue() => QuoteDisplayEntity(
      date: DateTime.now(),
      requestModel: RequestModel.doorTestValue(),
      numberOfUnits: 2,
      companyID: "companyID",
      companyName: "companyName",
      customerID: "CustomerID",
      customerName: "CustomerName",
      totalPrice: 40,
      rate: 3,
      status: QuoteStatus.pending);

  factory QuoteDisplayEntity.testWindowValue() => QuoteDisplayEntity(
      date: DateTime.now(),
      requestModel: RequestModel.windowTestValue(),
      numberOfUnits: 2,
      companyID: "companyID",
      companyName: "companyName",
      customerID: "CustomerID",
      customerName: "CistomerName",
      totalPrice: 40,
      rate: 2,
      status: QuoteStatus.pending);
}
