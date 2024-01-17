import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/Features/AuthenticationFeature/Data/Repositories/AuthRepository.dart';
import 'package:his/Features/AuthenticationFeature/Data/Repositories/DataRepository.dart';
import 'package:his/Features/ChatFeature/Domain/ChatModel.dart';
import 'package:his/Features/ChatFeature/Domain/MessageModel.dart';
import 'package:his/utils/Extensions.dart';
import 'package:his/utils/FirebaseConstants.dart';

import '../../../AuthenticationFeature/Data/RequestsModels/RegisterRequestsModels/RegisterRequest.dart';

class ChatRepository {
  FirebaseFirestore fireStore = FirebaseFirestore.instance;

  Future<String> getOtherName(String otherID) async {
    if ((await FirebaseFirestore.instance
            .collection(firebaseConstants.customerDataCollection)
            .doc(otherID)
            .get())
        .exists) {
      return (await FirebaseFirestore.instance
                  .collection(firebaseConstants.customerDataCollection)
                  .doc(otherID)
                  .get())
              .data()?[firebaseConstants.customerName] ??
          "Null User";
    }
    if ((await FirebaseFirestore.instance
            .collection(firebaseConstants.companyDataCollection)
            .doc(otherID)
            .get())
        .exists) {
      return (await FirebaseFirestore.instance
                  .collection(firebaseConstants.companyDataCollection)
                  .doc(otherID)
                  .get())
              .data()?[firebaseConstants.companyName] ??
          "Null User";
    }
    return "Nothing";
  }

  Stream<QuerySnapshot> getMessages(String chatID) {
    return fireStore
        .collection(firebaseConstants.chatCollection)
        .doc(chatID)
        .collection(firebaseConstants.messagesCollection)
        .orderBy(firebaseConstants.messagesSendDateTime, descending: false)
        .snapshots();
  }

  Future<ChatModel> getChatModel(
      String firstSideID, String secondSideID) async {
    var doesExist = (await fireStore
            .collection(firebaseConstants.chatCollection)
            .doc([firstSideID, secondSideID].constructChatID())
            .get())
        .exists;
    if (!doesExist) {
      initChat(ChatModel(
          firstSideName: await getOtherName(firstSideID),
          firstSideID: firstSideID,
          secondSideName: await getOtherName(secondSideID),
          secondSideID: secondSideID,
          chatID: [firstSideID, secondSideID].constructChatID()));
    }
    var chatModel = ChatModel.fromJson((await fireStore
            .collection(firebaseConstants.chatCollection)
            .doc([firstSideID, secondSideID].constructChatID())
            .get())
        .data()!);
    if (chatModel.firstSideID == firstSideID) {
      return chatModel;
    }
    var s = chatModel.copyWith();

    chatModel = chatModel.copyWith(
        firstSideID: s.secondSideID,
        firstSideName: s.secondSideName,
        secondSideID: s.firstSideID,
        secondSideName: s.secondSideName);

    return chatModel;
  }

  Future<void> initChat(ChatModel chatModel) async {
    fireStore
        .collection(firebaseConstants.chatCollection)
        .doc(chatModel.chatID)
        .set(chatModel.toJson());
  }

  Future<void> sendMessage(MessageModel messageModel, String chatID) async {
    fireStore
        .collection(firebaseConstants.chatCollection)
        .doc(chatID)
        .collection(firebaseConstants.messagesCollection)
        .add(messageModel.toJson());
  }
}

var chatRepositoryProvider = Provider((ref) => ChatRepository());
