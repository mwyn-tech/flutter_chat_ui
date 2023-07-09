import 'package:flutter/material.dart' show Color, ThemeData;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'constants.dart';

part 'chat_theme.freezed.dart';

@Freezed(fromJson: false, toJson: false)
sealed class ChatTheme with _$ChatTheme {
  const factory ChatTheme.light({
    @Default(Color(0xffffffff)) Color backgroundColor,
    @Default(defaultFontName) String fontName,
    @Default(Color(0xffeeeeee)) Color imagePlaceholderColor,
  }) = LightChatTheme;

  const factory ChatTheme.dark({
    @Default(Color(0xff000000)) Color backgroundColor,
    @Default(defaultFontName) String fontName,
    @Default(Color(0xff111111)) Color imagePlaceholderColor,
  }) = DarkChatTheme;

  factory ChatTheme.fromTheme(ThemeData theme) {
    return ChatTheme(
      backgroundColor: theme.colorScheme.surface,
      fontName: theme.textTheme.bodyLarge?.fontFamily ?? defaultFontName,
      imagePlaceholderColor: theme.colorScheme.surfaceContainerLow,
    );
  }

  factory ChatTheme({
    required Color backgroundColor,
    required String fontName,
    required Color imagePlaceholderColor,
  }) = _ChatTheme;

  const ChatTheme._();

  ChatTheme merge(ChatTheme? otherTheme) {
    if (otherTheme == null) return this;
    return copyWith(
      backgroundColor: otherTheme.backgroundColor,
      fontName: otherTheme.fontName,
      imagePlaceholderColor: otherTheme.imagePlaceholderColor,
    );
  }
}
