import 'dart:async';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:his/Features/AuthenticationFeature/Data/Repositories/AuthRepository.dart';
import 'package:his/Features/QuotesFeature/Data/HistoryRepository.dart';
import 'package:his/Features/QuotesFeature/Domain/QuoteResponseModel.dart';
import 'package:his/utils/Enums.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'HistoryController.g.dart';

@riverpod
class HistoryController extends _$HistoryController {
  @override
  Future<IList<QuoteResponseModel>> build() async {
    return ref
        .read(historyRepositoryProvider)
        .getDoneQuotesByID(ref.read(authRepositoryProvider).getCurrentUserID);
  }
}
