import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:his/Features/AuthenticationFeature/Data/Repositories/AuthController.dart';
import 'package:his/Features/AuthenticationFeature/Data/Repositories/AuthRepository.dart';
import 'package:his/Features/AuthenticationFeature/Data/Repositories/DataRepository.dart';
import 'package:his/Features/AuthenticationFeature/Domain/User/UserRole.dart';
import 'package:his/Features/ChatFeature/Data/Repositories/ChatRepository.dart';
import 'package:his/Features/ChatFeature/Domain/ChatModel.dart';
import 'package:his/Features/ChatFeature/Domain/MessageModel.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ChatController.g.dart';

@riverpod
class ChatController extends _$ChatController {
  @override
  FutureOr<ChatModel> build(String otherID) async {
    ChatModel model = ChatModel.testModel();
    var currentUserRole = ref.read(authControllerProvider).requireValue;
    switch (currentUserRole) {
      case Admin():
      case None():
        break;
      case Company():
        model = await ref
            .read(chatRepositoryProvider)
            .getChatModel(currentUserRole.user!.uid, otherID);
        break;
      case Customer():
        model = await ref
            .read(chatRepositoryProvider)
            .getChatModel(currentUserRole.user!.uid, otherID);
        break;
    }
    return model;
  }

  Future<void> onSendMessage(String message) async {
    if (message.isNotEmpty) {
      MessageModel messageModel = MessageModel(
          text: message,
          senderID: state.requireValue.firstSideID,
          sendDateTime: DateTime.now().toString());
      ref
          .read(chatRepositoryProvider)
          .sendMessage(messageModel, state.requireValue.chatID);
    }
  }

  Stream<QuerySnapshot> messagesStream() =>
      ref.watch(chatRepositoryProvider).getMessages(state.requireValue.chatID);
}

var chatMessagesStream = StreamProvider.family((ref, String otherID) {
  return ref.read(ChatControllerProvider(otherID).notifier).messagesStream();
});
