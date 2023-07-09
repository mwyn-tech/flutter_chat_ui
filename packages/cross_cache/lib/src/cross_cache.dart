import 'dart:async';
import 'dart:typed_data';

import 'package:dio/dio.dart';

import 'cache/cache.dart'
    if (dart.library.io) 'cache/io.dart'
    if (dart.library.html) 'cache/html.dart';

class CrossCache {
  final Cache _cache;
  final Dio _dio;
  final BaseOptions? options;

  CrossCache({Dio? dio, this.options})
      : _cache = Cache(),
        _dio = dio ?? Dio(options);

  Future<Uint8List> downloadAndSave(
    String url, {
    Map<String, dynamic>? headers,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final cached = await _cache.get(url);
      return cached;
      // ignore: empty_catches
    } catch (e) {}

    final response = await _dio.get(
      url,
      options: Options(
        headers: headers,
        responseType: ResponseType.bytes,
      ),
      onReceiveProgress: onReceiveProgress,
    );

    if (response.statusCode != 200) {
      throw DioException.badResponse(
        statusCode: response.statusCode ?? -1,
        requestOptions: response.requestOptions,
        response: response,
      );
    }

    final bytes = response.data as Uint8List;
    await _cache.set(url, bytes);

    return bytes;
  }

  Future<bool> contains(String key) => _cache.contains(key);

  void dispose() {
    _dio.close(force: true);
    _cache.dispose();
  }
}
