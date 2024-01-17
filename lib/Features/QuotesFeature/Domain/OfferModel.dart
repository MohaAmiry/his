import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:his/utils/Enums.dart';

import 'Requests/RequestModel.dart';

part 'OfferModel.g.dart';

@JsonSerializable(explicitToJson: true)
class OfferModel {
  final String companyID;
  final String companyName;
  final double companyRate;
  final RequestModel requestModel;
  final double estimatedPrice;

  const OfferModel(
      {required this.companyID,
      required this.companyName,
      required this.companyRate,
      required this.requestModel,
      required this.estimatedPrice});

  factory OfferModel.fromJson(Map<String, dynamic> json) =>
      _$OfferModelFromJson(json);

  Map<String, dynamic> toJson() => _$OfferModelToJson(this);
}
