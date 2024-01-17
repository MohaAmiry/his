import 'dart:async';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:his/Features/AuthenticationFeature/Data/Repositories/AuthRepository.dart';
import 'package:his/Features/AuthenticationFeature/Data/Repositories/DataRepository.dart';
import 'package:his/Features/QuotesFeature/Domain/QuoteResponseModel.dart';
import 'package:his/utils/Enums.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../Data/OffersRepository.dart';

part 'AcceptedQuotesController.g.dart';

@riverpod
class AcceptedQuotesController extends _$AcceptedQuotesController {
  @override
  FutureOr<IList<QuoteResponseModel>> build() async {
    return ref.read(offersRepositoryProvider).getQuotesByIDAndStatus(
        ref.read(authRepositoryProvider).getCurrentUserID,
        QuoteStatus.accepted);
  }

  Future<void> rateService(
      String quoteID, double rate, String companyID) async {
    state = const AsyncLoading();
    var result = await AsyncValue.guard(() => ref
        .read(offersRepositoryProvider)
        .rateService(quoteID, rate, companyID));
    if (result == true) {
      ref.invalidateSelf();
    }
  }
}
