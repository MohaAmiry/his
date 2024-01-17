import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/Features/_SharedData/AbstractDataRepository.dart';

import '../../../utils/Enums.dart';
import 'OffersRepository.dart';
import '../Domain/QuoteResponseModel.dart';

class _HistoryRepository extends AbstractRepository {
  Ref ref;

  _HistoryRepository(this.ref);

  Future<IList<QuoteResponseModel>> getDoneQuotesByID(String id) async => ref
      .read(offersRepositoryProvider)
      .getQuotesByIDAndStatus(id, QuoteStatus.done);
}

var historyRepositoryProvider = Provider((ref) => _HistoryRepository(ref));
