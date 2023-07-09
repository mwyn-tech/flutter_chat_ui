// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatTheme {
  Color get backgroundColor => throw _privateConstructorUsedError;
  String get fontName => throw _privateConstructorUsedError;
  Color get imagePlaceholderColor => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            Color backgroundColor, String fontName, Color imagePlaceholderColor)
        $default, {
    required TResult Function(
            Color backgroundColor, String fontName, Color imagePlaceholderColor)
        light,
    required TResult Function(
            Color backgroundColor, String fontName, Color imagePlaceholderColor)
        dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Color backgroundColor, String fontName,
            Color imagePlaceholderColor)?
        $default, {
    TResult? Function(Color backgroundColor, String fontName,
            Color imagePlaceholderColor)?
        light,
    TResult? Function(Color backgroundColor, String fontName,
            Color imagePlaceholderColor)?
        dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Color backgroundColor, String fontName,
            Color imagePlaceholderColor)?
        $default, {
    TResult Function(Color backgroundColor, String fontName,
            Color imagePlaceholderColor)?
        light,
    TResult Function(Color backgroundColor, String fontName,
            Color imagePlaceholderColor)?
        dark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ChatTheme value) $default, {
    required TResult Function(LightChatTheme value) light,
    required TResult Function(DarkChatTheme value) dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ChatTheme value)? $default, {
    TResult? Function(LightChatTheme value)? light,
    TResult? Function(DarkChatTheme value)? dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ChatTheme value)? $default, {
    TResult Function(LightChatTheme value)? light,
    TResult Function(DarkChatTheme value)? dark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatThemeCopyWith<ChatTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatThemeCopyWith<$Res> {
  factory $ChatThemeCopyWith(ChatTheme value, $Res Function(ChatTheme) then) =
      _$ChatThemeCopyWithImpl<$Res, ChatTheme>;
  @useResult
  $Res call(
      {Color backgroundColor, String fontName, Color imagePlaceholderColor});
}

/// @nodoc
class _$ChatThemeCopyWithImpl<$Res, $Val extends ChatTheme>
    implements $ChatThemeCopyWith<$Res> {
  _$ChatThemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundColor = null,
    Object? fontName = null,
    Object? imagePlaceholderColor = null,
  }) {
    return _then(_value.copyWith(
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
      fontName: null == fontName
          ? _value.fontName
          : fontName // ignore: cast_nullable_to_non_nullable
              as String,
      imagePlaceholderColor: null == imagePlaceholderColor
          ? _value.imagePlaceholderColor
          : imagePlaceholderColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LightChatThemeImplCopyWith<$Res>
    implements $ChatThemeCopyWith<$Res> {
  factory _$$LightChatThemeImplCopyWith(_$LightChatThemeImpl value,
          $Res Function(_$LightChatThemeImpl) then) =
      __$$LightChatThemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Color backgroundColor, String fontName, Color imagePlaceholderColor});
}

/// @nodoc
class __$$LightChatThemeImplCopyWithImpl<$Res>
    extends _$ChatThemeCopyWithImpl<$Res, _$LightChatThemeImpl>
    implements _$$LightChatThemeImplCopyWith<$Res> {
  __$$LightChatThemeImplCopyWithImpl(
      _$LightChatThemeImpl _value, $Res Function(_$LightChatThemeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundColor = null,
    Object? fontName = null,
    Object? imagePlaceholderColor = null,
  }) {
    return _then(_$LightChatThemeImpl(
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
      fontName: null == fontName
          ? _value.fontName
          : fontName // ignore: cast_nullable_to_non_nullable
              as String,
      imagePlaceholderColor: null == imagePlaceholderColor
          ? _value.imagePlaceholderColor
          : imagePlaceholderColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$LightChatThemeImpl extends LightChatTheme {
  const _$LightChatThemeImpl(
      {this.backgroundColor = const Color(0xffffffff),
      this.fontName = defaultFontName,
      this.imagePlaceholderColor = const Color(0xffeeeeee)})
      : super._();

  @override
  @JsonKey()
  final Color backgroundColor;
  @override
  @JsonKey()
  final String fontName;
  @override
  @JsonKey()
  final Color imagePlaceholderColor;

  @override
  String toString() {
    return 'ChatTheme.light(backgroundColor: $backgroundColor, fontName: $fontName, imagePlaceholderColor: $imagePlaceholderColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LightChatThemeImpl &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.fontName, fontName) ||
                other.fontName == fontName) &&
            (identical(other.imagePlaceholderColor, imagePlaceholderColor) ||
                other.imagePlaceholderColor == imagePlaceholderColor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, backgroundColor, fontName, imagePlaceholderColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LightChatThemeImplCopyWith<_$LightChatThemeImpl> get copyWith =>
      __$$LightChatThemeImplCopyWithImpl<_$LightChatThemeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            Color backgroundColor, String fontName, Color imagePlaceholderColor)
        $default, {
    required TResult Function(
            Color backgroundColor, String fontName, Color imagePlaceholderColor)
        light,
    required TResult Function(
            Color backgroundColor, String fontName, Color imagePlaceholderColor)
        dark,
  }) {
    return light(backgroundColor, fontName, imagePlaceholderColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Color backgroundColor, String fontName,
            Color imagePlaceholderColor)?
        $default, {
    TResult? Function(Color backgroundColor, String fontName,
            Color imagePlaceholderColor)?
        light,
    TResult? Function(Color backgroundColor, String fontName,
            Color imagePlaceholderColor)?
        dark,
  }) {
    return light?.call(backgroundColor, fontName, imagePlaceholderColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Color backgroundColor, String fontName,
            Color imagePlaceholderColor)?
        $default, {
    TResult Function(Color backgroundColor, String fontName,
            Color imagePlaceholderColor)?
        light,
    TResult Function(Color backgroundColor, String fontName,
            Color imagePlaceholderColor)?
        dark,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light(backgroundColor, fontName, imagePlaceholderColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ChatTheme value) $default, {
    required TResult Function(LightChatTheme value) light,
    required TResult Function(DarkChatTheme value) dark,
  }) {
    return light(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ChatTheme value)? $default, {
    TResult? Function(LightChatTheme value)? light,
    TResult? Function(DarkChatTheme value)? dark,
  }) {
    return light?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ChatTheme value)? $default, {
    TResult Function(LightChatTheme value)? light,
    TResult Function(DarkChatTheme value)? dark,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light(this);
    }
    return orElse();
  }
}

abstract class LightChatTheme extends ChatTheme {
  const factory LightChatTheme(
      {final Color backgroundColor,
      final String fontName,
      final Color imagePlaceholderColor}) = _$LightChatThemeImpl;
  const LightChatTheme._() : super._();

  @override
  Color get backgroundColor;
  @override
  String get fontName;
  @override
  Color get imagePlaceholderColor;
  @override
  @JsonKey(ignore: true)
  _$$LightChatThemeImplCopyWith<_$LightChatThemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DarkChatThemeImplCopyWith<$Res>
    implements $ChatThemeCopyWith<$Res> {
  factory _$$DarkChatThemeImplCopyWith(
          _$DarkChatThemeImpl value, $Res Function(_$DarkChatThemeImpl) then) =
      __$$DarkChatThemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Color backgroundColor, String fontName, Color imagePlaceholderColor});
}

/// @nodoc
class __$$DarkChatThemeImplCopyWithImpl<$Res>
    extends _$ChatThemeCopyWithImpl<$Res, _$DarkChatThemeImpl>
    implements _$$DarkChatThemeImplCopyWith<$Res> {
  __$$DarkChatThemeImplCopyWithImpl(
      _$DarkChatThemeImpl _value, $Res Function(_$DarkChatThemeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundColor = null,
    Object? fontName = null,
    Object? imagePlaceholderColor = null,
  }) {
    return _then(_$DarkChatThemeImpl(
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
      fontName: null == fontName
          ? _value.fontName
          : fontName // ignore: cast_nullable_to_non_nullable
              as String,
      imagePlaceholderColor: null == imagePlaceholderColor
          ? _value.imagePlaceholderColor
          : imagePlaceholderColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$DarkChatThemeImpl extends DarkChatTheme {
  const _$DarkChatThemeImpl(
      {this.backgroundColor = const Color(0xff000000),
      this.fontName = defaultFontName,
      this.imagePlaceholderColor = const Color(0xff111111)})
      : super._();

  @override
  @JsonKey()
  final Color backgroundColor;
  @override
  @JsonKey()
  final String fontName;
  @override
  @JsonKey()
  final Color imagePlaceholderColor;

  @override
  String toString() {
    return 'ChatTheme.dark(backgroundColor: $backgroundColor, fontName: $fontName, imagePlaceholderColor: $imagePlaceholderColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DarkChatThemeImpl &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.fontName, fontName) ||
                other.fontName == fontName) &&
            (identical(other.imagePlaceholderColor, imagePlaceholderColor) ||
                other.imagePlaceholderColor == imagePlaceholderColor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, backgroundColor, fontName, imagePlaceholderColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DarkChatThemeImplCopyWith<_$DarkChatThemeImpl> get copyWith =>
      __$$DarkChatThemeImplCopyWithImpl<_$DarkChatThemeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            Color backgroundColor, String fontName, Color imagePlaceholderColor)
        $default, {
    required TResult Function(
            Color backgroundColor, String fontName, Color imagePlaceholderColor)
        light,
    required TResult Function(
            Color backgroundColor, String fontName, Color imagePlaceholderColor)
        dark,
  }) {
    return dark(backgroundColor, fontName, imagePlaceholderColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Color backgroundColor, String fontName,
            Color imagePlaceholderColor)?
        $default, {
    TResult? Function(Color backgroundColor, String fontName,
            Color imagePlaceholderColor)?
        light,
    TResult? Function(Color backgroundColor, String fontName,
            Color imagePlaceholderColor)?
        dark,
  }) {
    return dark?.call(backgroundColor, fontName, imagePlaceholderColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Color backgroundColor, String fontName,
            Color imagePlaceholderColor)?
        $default, {
    TResult Function(Color backgroundColor, String fontName,
            Color imagePlaceholderColor)?
        light,
    TResult Function(Color backgroundColor, String fontName,
            Color imagePlaceholderColor)?
        dark,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark(backgroundColor, fontName, imagePlaceholderColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ChatTheme value) $default, {
    required TResult Function(LightChatTheme value) light,
    required TResult Function(DarkChatTheme value) dark,
  }) {
    return dark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ChatTheme value)? $default, {
    TResult? Function(LightChatTheme value)? light,
    TResult? Function(DarkChatTheme value)? dark,
  }) {
    return dark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ChatTheme value)? $default, {
    TResult Function(LightChatTheme value)? light,
    TResult Function(DarkChatTheme value)? dark,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark(this);
    }
    return orElse();
  }
}

abstract class DarkChatTheme extends ChatTheme {
  const factory DarkChatTheme(
      {final Color backgroundColor,
      final String fontName,
      final Color imagePlaceholderColor}) = _$DarkChatThemeImpl;
  const DarkChatTheme._() : super._();

  @override
  Color get backgroundColor;
  @override
  String get fontName;
  @override
  Color get imagePlaceholderColor;
  @override
  @JsonKey(ignore: true)
  _$$DarkChatThemeImplCopyWith<_$DarkChatThemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatThemeImplCopyWith<$Res>
    implements $ChatThemeCopyWith<$Res> {
  factory _$$ChatThemeImplCopyWith(
          _$ChatThemeImpl value, $Res Function(_$ChatThemeImpl) then) =
      __$$ChatThemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Color backgroundColor, String fontName, Color imagePlaceholderColor});
}

/// @nodoc
class __$$ChatThemeImplCopyWithImpl<$Res>
    extends _$ChatThemeCopyWithImpl<$Res, _$ChatThemeImpl>
    implements _$$ChatThemeImplCopyWith<$Res> {
  __$$ChatThemeImplCopyWithImpl(
      _$ChatThemeImpl _value, $Res Function(_$ChatThemeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundColor = null,
    Object? fontName = null,
    Object? imagePlaceholderColor = null,
  }) {
    return _then(_$ChatThemeImpl(
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
      fontName: null == fontName
          ? _value.fontName
          : fontName // ignore: cast_nullable_to_non_nullable
              as String,
      imagePlaceholderColor: null == imagePlaceholderColor
          ? _value.imagePlaceholderColor
          : imagePlaceholderColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$ChatThemeImpl extends _ChatTheme {
  _$ChatThemeImpl(
      {required this.backgroundColor,
      required this.fontName,
      required this.imagePlaceholderColor})
      : super._();

  @override
  final Color backgroundColor;
  @override
  final String fontName;
  @override
  final Color imagePlaceholderColor;

  @override
  String toString() {
    return 'ChatTheme(backgroundColor: $backgroundColor, fontName: $fontName, imagePlaceholderColor: $imagePlaceholderColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatThemeImpl &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.fontName, fontName) ||
                other.fontName == fontName) &&
            (identical(other.imagePlaceholderColor, imagePlaceholderColor) ||
                other.imagePlaceholderColor == imagePlaceholderColor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, backgroundColor, fontName, imagePlaceholderColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatThemeImplCopyWith<_$ChatThemeImpl> get copyWith =>
      __$$ChatThemeImplCopyWithImpl<_$ChatThemeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            Color backgroundColor, String fontName, Color imagePlaceholderColor)
        $default, {
    required TResult Function(
            Color backgroundColor, String fontName, Color imagePlaceholderColor)
        light,
    required TResult Function(
            Color backgroundColor, String fontName, Color imagePlaceholderColor)
        dark,
  }) {
    return $default(backgroundColor, fontName, imagePlaceholderColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Color backgroundColor, String fontName,
            Color imagePlaceholderColor)?
        $default, {
    TResult? Function(Color backgroundColor, String fontName,
            Color imagePlaceholderColor)?
        light,
    TResult? Function(Color backgroundColor, String fontName,
            Color imagePlaceholderColor)?
        dark,
  }) {
    return $default?.call(backgroundColor, fontName, imagePlaceholderColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Color backgroundColor, String fontName,
            Color imagePlaceholderColor)?
        $default, {
    TResult Function(Color backgroundColor, String fontName,
            Color imagePlaceholderColor)?
        light,
    TResult Function(Color backgroundColor, String fontName,
            Color imagePlaceholderColor)?
        dark,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(backgroundColor, fontName, imagePlaceholderColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ChatTheme value) $default, {
    required TResult Function(LightChatTheme value) light,
    required TResult Function(DarkChatTheme value) dark,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ChatTheme value)? $default, {
    TResult? Function(LightChatTheme value)? light,
    TResult? Function(DarkChatTheme value)? dark,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ChatTheme value)? $default, {
    TResult Function(LightChatTheme value)? light,
    TResult Function(DarkChatTheme value)? dark,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _ChatTheme extends ChatTheme {
  factory _ChatTheme(
      {required final Color backgroundColor,
      required final String fontName,
      required final Color imagePlaceholderColor}) = _$ChatThemeImpl;
  _ChatTheme._() : super._();

  @override
  Color get backgroundColor;
  @override
  String get fontName;
  @override
  Color get imagePlaceholderColor;
  @override
  @JsonKey(ignore: true)
  _$$ChatThemeImplCopyWith<_$ChatThemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
