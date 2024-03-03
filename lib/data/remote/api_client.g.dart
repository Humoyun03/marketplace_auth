// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _ApiClient implements ApiClient {
  _ApiClient(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<SendCodeResponse> sendCode(
    SendCodeRequest sendCodeRequest,
    String type,
    String lang,
    String model,
    String version,
    String build,
    String uid,
    String token,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'x-device-type': type,
      r'x-app-lang': lang,
      r'x-device-model': model,
      r'x-app-version': version,
      r'x-app-build': build,
      r'x-device-uid': uid,
      r'x-fcm-token': token,
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = sendCodeRequest;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<SendCodeResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/otp/send-code',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = SendCodeResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CheckExistsResponse> checkCode(
    CheckExistRequest checkExistRequest,
    String type,
    String lang,
    String model,
    String version,
    String build,
    String uid,
    String token,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'x-device-type': type,
      r'x-app-lang': lang,
      r'x-device-model': model,
      r'x-app-version': version,
      r'x-app-build': build,
      r'x-device-uid': uid,
      r'x-fcm-token': token,
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = checkExistRequest;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CheckExistsResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/auth/exist',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = CheckExistsResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<LoginResponse> login(
    LoginRequest loginRequest,
    String type,
    String lang,
    String model,
    String version,
    String build,
    String uid,
    String token,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'x-device-type': type,
      r'x-app-lang': lang,
      r'x-device-model': model,
      r'x-app-version': version,
      r'x-app-build': build,
      r'x-device-uid': uid,
      r'x-fcm-token': token,
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = loginRequest;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<LoginResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/auth/login',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = LoginResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SignUpResponse> signUp(
    SignUpRequest signUpRequest,
    String type,
    String lang,
    String model,
    String version,
    String build,
    String uid,
    String token,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'x-device-type': type,
      r'x-app-lang': lang,
      r'x-device-model': model,
      r'x-app-version': version,
      r'x-app-build': build,
      r'x-device-uid': uid,
      r'x-fcm-token': token,
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = signUpRequest;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<SignUpResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/auth/signup',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = SignUpResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<LogOutResponse> logout(
    String type,
    String lang,
    String model,
    String version,
    String build,
    String uid,
    String token,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'x-device-type': type,
      r'x-app-lang': lang,
      r'x-device-model': model,
      r'x-app-version': version,
      r'x-app-build': build,
      r'x-device-uid': uid,
      r'x-fcm-token': token,
    };
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<LogOutResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/auth/logout',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = LogOutResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
