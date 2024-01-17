import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../utils/Enums.dart';
import 'OfferModel.dart';
import 'Requests/RequestModel.dart';

part 'QuoteModelRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class QuoteModelRequest {
  DateTime date;
  final String companyID;
  final String customerID;
  final RequestModel requestModel;
  final double estimatedPrice;
  double serviceRate;
  double companyRate;
  QuoteStatus status;

  QuoteModelRequest(
      {required this.date,
      required this.companyID,
      required this.customerID,
      required this.requestModel,
      required this.estimatedPrice,
      required this.serviceRate,
      required this.companyRate,
      required this.status});

  factory QuoteModelRequest.fromJson(Map<String, dynamic> json) =>
      _$QuoteModelRequestFromJson(json);

  Map<String, dynamic> toJson() => _$QuoteModelRequestToJson(this);
}
