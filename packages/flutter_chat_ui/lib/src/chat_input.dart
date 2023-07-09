import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart';
import 'package:provider/provider.dart';

import 'utils/chat_input_height_notifier.dart';
import 'utils/typedefs.dart';

class ChatInput extends StatelessWidget {
  final Color backgroundColor;
  final OnMessageSendCallback onMessageSend;

  const ChatInput({
    super.key,
    required this.backgroundColor,
    required this.onMessageSend,
  });

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();

    void handleSubmitted(String text) {
      if (text.isNotEmpty) {
        onMessageSend?.call(text);
        textController.clear();
      }
    }

    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 10),
          child: Container(
            color: backgroundColor.withOpacity(0.8),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: textController,
                      decoration: InputDecoration(
                        hintText: 'Type a message',
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        filled: true,
                        fillColor: backgroundColor.withOpacity(0.4),
                      ),
                      onSubmitted: handleSubmitted,
                    ),
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: () => handleSubmitted(textController.text),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ChatInputWidget extends StatefulWidget {
  const ChatInputWidget({super.key});

  @override
  State<ChatInputWidget> createState() => _ChatInputWidgetState();
}

class _ChatInputWidgetState extends State<ChatInputWidget> {
  final GlobalKey _inputKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _updateInputHeight());
  }

  void _updateInputHeight() {
    final renderBox =
        _inputKey.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox != null) {
      context
          .read<ChatInputHeightNotifier>()
          .updateHeight(renderBox.size.height);
    }
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor =
        context.select((ChatTheme theme) => theme.backgroundColor);
    final onMessageSend = context.read<OnMessageSendCallback>();

    return ChatInput(
      key: _inputKey,
      backgroundColor: backgroundColor,
      onMessageSend: onMessageSend,
    );
  }
}
