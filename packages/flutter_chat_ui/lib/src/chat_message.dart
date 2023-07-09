import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart';
import 'package:flyer_chat_image_message/flyer_chat_image_message.dart';
import 'package:flyer_chat_text_message/flyer_chat_text_message.dart';
import 'package:provider/provider.dart';

import 'utils/typedefs.dart';

class ChatMessage extends StatefulWidget {
  final Animation<double> animation;
  final Message message;
  final bool? isRemoved;

  const ChatMessage({
    super.key,
    required this.animation,
    required this.message,
    this.isRemoved,
  });

  @override
  State<ChatMessage> createState() => ChatMessageState();
}

class ChatMessageState extends State<ChatMessage> {
  late StreamSubscription<ChatOperation>? _operationsSubscription;
  late Message _updatedMessage;

  @override
  void initState() {
    super.initState();

    _updatedMessage = widget.message;

    if (widget.isRemoved == true) {
      _operationsSubscription = null;
    } else {
      final chatController =
          Provider.of<ChatController>(context, listen: false);
      _operationsSubscription = chatController.operationsStream.listen((event) {
        switch (event.type) {
          case ChatOperationType.update:
            assert(
              event.oldMessage != null,
              'Old message must be provided when updating a message.',
            );
            assert(
              event.message != null,
              'Message must be provided when updating a message.',
            );
            if (_updatedMessage == event.oldMessage) {
              setState(() {
                _updatedMessage = event.message!;
              });
            }
          default:
            break;
        }
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
    _operationsSubscription?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    final onMessageTap = context.read<OnMessageTapCallback>();
    final userId = context.watch<String>();
    final curvedAnimation = CurvedAnimation(
      parent: widget.animation,
      curve: Curves.linearToEaseOut,
    );

    return GestureDetector(
      onTap: () => onMessageTap?.call(_updatedMessage),
      child: FadeTransition(
        opacity: curvedAnimation,
        child: SizeTransition(
          sizeFactor: curvedAnimation,
          child: ScaleTransition(
            scale: curvedAnimation,
            alignment: _updatedMessage.senderId == userId
                ? Alignment.centerRight
                : Alignment.centerLeft,
            child: Align(
              alignment: _updatedMessage.senderId == userId
                  ? AlignmentDirectional.centerEnd
                  : AlignmentDirectional.centerStart,
              child: _updatedMessage is TextMessage
                  ? FlyerChatTextMessage(
                      message: _updatedMessage as TextMessage,
                    )
                  : FlyerChatImageMessage(
                      message: _updatedMessage as ImageMessage,
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
