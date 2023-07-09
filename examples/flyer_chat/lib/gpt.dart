import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';

class Gpt extends StatefulWidget {
  final Dio dio;

  const Gpt({super.key, required this.dio});

  @override
  GptState createState() => GptState();
}

class GptState extends State<Gpt> {
  final _chatController = InMemoryChatController();

  @override
  void initState() {
    super.initState();
    widget.dio.post(
      'https://api.openai.com/v1/chat/completions',
      data: {
        'model': 'gpt-3.5-turbo-0125',
        'messages': [
          {
            'role': 'system',
            'content': 'Hello, I am a friendly AI assistant.',
          },
        ],
      },
      options: Options(
        headers: {
          'Authorization': 'Bearer ',
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _chatController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Chat(
        chatController: _chatController,
        userId: '',
      ),
      persistentFooterButtons: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Go back'),
        ),
      ],
    );
  }
}
