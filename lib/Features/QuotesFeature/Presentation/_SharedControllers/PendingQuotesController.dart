import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:his/ExceptionHandler/AppException.dart';
import 'package:his/ExceptionHandler/MessageEmitter.dart';
import 'package:his/ExceptionHandler/MessageTypes.dart';
import 'package:his/Features/AuthenticationFeature/Data/Repositories/AuthRepository.dart';
import 'package:his/Features/QuotesFeature/Domain/QuoteResponseModel.dart';
import 'package:his/utils/Enums.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../Data/OffersRepository.dart';

part 'PendingQuotesController.g.dart';

@riverpod
class PendingQuotesController extends _$PendingQuotesController {
  @override
  FutureOr<IList<QuoteResponseModel>> build() async {
    return ref.read(offersRepositoryProvider).getQuotesByIDAndStatus(
        ref.read(authRepositoryProvider).getCurrentUserID, QuoteStatus.pending);
  }

  Future<void> rejectQuote(String quoteID) async {
    state = const AsyncLoading();
    ref
        .read(messageEmitterProvider.notifier)
        .setMessage(PendingMessage("Pending Rejection"));
    var s = await AsyncValue.guard(() async =>
        await ref.read(offersRepositoryProvider).rejectQuoteByID(quoteID));
    if (s.hasError) {
      ref.read(messageEmitterProvider.notifier).setMessage(FailedMessage(
          AppException(message: "Failed To Reject with Error: ${s.error}")));
    }
    if (s.hasValue) {
      ref
          .read(messageEmitterProvider.notifier)
          .setMessage(SuccessfulMessage("Rejected Quote Successfully"));
    }
    ref.invalidateSelf();
  }

  Future<void> acceptQuote(String quoteID) async {
    state = const AsyncLoading();
    ref
        .read(messageEmitterProvider.notifier)
        .setMessage(PendingMessage("Pending Acceptance"));
    var s = await AsyncValue.guard(() async =>
        await ref.read(offersRepositoryProvider).acceptQuoteByID(quoteID));
    if (s.hasValue) {
      ref.invalidateSelf();
      ref
          .read(messageEmitterProvider.notifier)
          .setMessage(SuccessfulMessage("Successfully Accepted Quote"));
    }
  }
}
