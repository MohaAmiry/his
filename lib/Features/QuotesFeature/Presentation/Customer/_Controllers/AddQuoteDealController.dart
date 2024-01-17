import 'dart:async';
import 'package:his/utils/Extensions.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../Data/OffersRepository.dart';
import '../../../Domain/Requests/RequestModel.dart';
import '../../../Domain/OfferModel.dart';

part 'AddQuoteDealController.g.dart';

@riverpod
class AddQuoteDealController extends _$AddQuoteDealController {
  @override
  FutureOr<List<OfferModel>> build(RequestModel requestModel) async {
    return ref
        .watch(offersRepositoryProvider)
        .getAllCompaniesOffers(requestModel);
  }
}

@riverpod
class DealSelectionController extends _$DealSelectionController {
  @override
  FutureOr<bool?> build() async {
    return null;
  }

  Future<void> selectDeal(OfferModel offerModel) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async =>
        await ref.read(offersRepositoryProvider).addQuote(offerModel));
  }
}
