import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:his/Features/ChatFeature/Data/Repositories/ChatRepository.dart';
import 'package:his/Features/ChatFeature/Presentation/Controller/ChatController.dart';
import 'package:his/Features/ChatFeature/Presentation/_Widgets/MessageWidget.dart';
import 'package:his/Features/ErrorFeature/ErrorView.dart';
import 'package:his/utils/FirebaseConstants.dart';
import 'package:his/utils/Resouces/ValuesManager.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';
import '../../../utils/Resouces/ColorManager.dart';

@RoutePage()
class ChatView extends ConsumerStatefulWidget {
  final String otherID;
  final String otherName;

  const ChatView({super.key, required this.otherID, required this.otherName});

  @override
  ConsumerState createState() => _ChatViewState();
}

class _ChatViewState extends ConsumerState<ChatView> {
  TextEditingController messageController = TextEditingController();

  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(widget.otherName,
              style: Theme.of(context).textTheme.titleLarge)),
      backgroundColor: ColorManager.surface,
      body: ref.watch(chatControllerProvider(widget.otherID)).when(
            data: (data) => Column(
              children: [
                Flexible(
                  child: ref.watch(chatMessagesStream(widget.otherID)).when(
                      data: (data) => ListView(
                          reverse: true,
                          children: data.docs.reversed
                              .map((e) => MessageWidget(
                                  message:
                                      e.get(firebaseConstants.messagesText),
                                  isMe: e.get(
                                          firebaseConstants.messagesSenderID) !=
                                      widget.otherID))
                              .toList()),
                      error: (error, stackTrace) => ErrorView(error: error),
                      loading: () =>
                          const Center(child: CircularProgressIndicator())),
                ),
                Container(
                  decoration:
                      const BoxDecoration(color: ColorManager.primaryContainer),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 12,
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 17,
                            width: MediaQuery.of(context).size.width / 1.3,
                            child: TextField(
                              controller: messageController,
                              decoration: InputDecoration(
                                  helperText: null,
                                  errorText: null,
                                  hintText: "Send Message",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        AppSizeManager.s5),
                                  )),
                            ),
                          ),
                          IconButton(
                              icon: const Icon(Icons.send),
                              onPressed: () async {
                                await ref
                                    .read(chatControllerProvider(widget.otherID)
                                        .notifier)
                                    .onSendMessage(
                                        messageController.value.text);
                                messageController.text = "";
                              }),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            error: (error, stackTrace) => ErrorView(error: error),
            loading: () => const Center(child: CircularProgressIndicator()),
          ),
    );
  }
}
