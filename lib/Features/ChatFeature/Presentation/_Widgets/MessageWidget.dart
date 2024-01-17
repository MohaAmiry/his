import 'package:flutter/material.dart';
import 'package:his/utils/Resouces/ColorManager.dart';
import 'package:his/utils/Resouces/ValuesManager.dart';

class MessageWidget extends StatelessWidget {
  final String message;
  final bool isMe;

  const MessageWidget({Key? key, required this.message, required this.isMe})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: isMe
                      ? const Radius.circular(AppSizeManager.s10)
                      : Radius.zero,
                  topRight: !isMe
                      ? const Radius.circular(AppSizeManager.s10)
                      : Radius.zero,
                  bottomLeft: const Radius.circular(AppSizeManager.s10),
                  bottomRight: const Radius.circular(AppSizeManager.s10))),
          color: isMe ? ColorManager.primary : ColorManager.secondary,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: AppSizeManager.s5, horizontal: AppSizeManager.s10),
            child: Text(message,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: ColorManager.onPrimary)),
          ),
        ),
      ),
    );
  }
}
