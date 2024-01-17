import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../Data/OffersRepository.dart';
import '../../_SharedControllers/AcceptedQuotesController.dart';

part 'RateController.g.dart';

@riverpod
class RateController extends _$RateController {
  @override
  FutureOr<bool?> build() async {
    return null;
  }

  Future<void> rateService(
      String quoteID, double rate, String companyID) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => ref
        .read(offersRepositoryProvider)
        .rateService(quoteID, rate, companyID));
    ref.refresh(acceptedQuotesControllerProvider);
  }
}
