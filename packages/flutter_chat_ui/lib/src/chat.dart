import 'dart:ui';

import 'package:cross_cache/cross_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart';
import 'package:provider/provider.dart';
import 'chat_animated_list.dart';
import 'chat_input.dart';
import 'chat_message.dart';
import 'utils/chat_input_height_notifier.dart';
import 'utils/typedefs.dart';

class Chat extends StatefulWidget {
  final String userId;
  final ChatController chatController;
  final ChatTheme? theme;
  final CrossCache? crossCache;
  final OnMessageSendCallback onMessageSend;
  final OnMessageTapCallback onMessageTap;

  const Chat({
    super.key,
    required this.userId,
    required this.chatController,
    this.theme,
    this.crossCache,
    this.onMessageSend,
    this.onMessageTap,
  });

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> with WidgetsBindingObserver {
  late ChatTheme _theme;
  late CrossCache _crossCache;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _updateTheme();
    _crossCache = widget.crossCache ?? CrossCache();
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
    // Only try to dispose cross cache if it's not provided, since
    // users might want to keep downloading media even after the chat
    // is disposed.
    if (widget.crossCache == null) {
      _crossCache.dispose();
    }
  }

  @override
  void didChangePlatformBrightness() {
    super.didChangePlatformBrightness();
    setState(_updateTheme);
  }

  @override
  void didUpdateWidget(covariant Chat oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.theme != widget.theme) {
      _theme = _theme.merge(widget.theme);
    }
  }

  void _updateTheme() {
    _theme = PlatformDispatcher.instance.platformBrightness == Brightness.dark
        ? const ChatTheme.dark().merge(widget.theme)
        : const ChatTheme.light().merge(widget.theme);
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider.value(value: widget.userId),
        Provider.value(value: widget.chatController),
        Provider.value(value: _theme),
        Provider.value(value: _crossCache),
        Provider.value(value: widget.onMessageSend),
        Provider.value(value: widget.onMessageTap),
        ChangeNotifierProvider(create: (_) => ChatInputHeightNotifier()),
      ],
      child: const ChatWidget(),
    );
  }
}

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final backgroundColor =
        context.select((ChatTheme theme) => theme.backgroundColor);

    return Container(
      color: backgroundColor,
      child: Stack(
        children: [
          ChatAnimatedList(
            itemBuilder: (_, animation, message, {bool? isRemoved}) =>
                ChatMessage(
              key: ValueKey(message.id),
              animation: animation,
              message: message,
              isRemoved: isRemoved,
            ),
          ),
          const ChatInputWidget(),
        ],
      ),
    );
  }
}
