import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../utils/Enums.dart';
import 'Requests/RequestModel.dart';
part 'QuoteResponseModel.g.dart';

@JsonSerializable(explicitToJson: true)
class QuoteResponseModel {
  final DateTime date;
  final String quoteID;
  final String companyID;
  final String customerID;
  final String companyName;
  final String customerName;
  final RequestModel requestModel;
  final double estimatedPrice;
  final double serviceRate;
  final double companyRate;
  final QuoteStatus status;

  QuoteResponseModel(
      {required this.date,
      required this.quoteID,
      required this.companyID,
      required this.customerID,
      required this.companyName,
      required this.customerName,
      required this.requestModel,
      required this.estimatedPrice,
      required this.serviceRate,
      required this.companyRate,
      required this.status});

  factory QuoteResponseModel.fromJson(Map<String, dynamic> json) =>
      _$QuoteResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$QuoteResponseModelToJson(this);

  @override
  String toString() {
    return 'QuoteResponseModel{date: $date,'
        ' quoteID: $quoteID, '
        'companyID: $companyID, '
        'customerID: $customerID, '
        'requestModel: $requestModel, '
        'estimatedPrice: $estimatedPrice, '
        'serviceRate: $serviceRate, '
        'companyRate: $companyRate, '
        'status: $status}';
  }
}
