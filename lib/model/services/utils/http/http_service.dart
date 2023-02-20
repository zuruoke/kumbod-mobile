import 'dart:io';

import 'package:dio/dio.dart';
import 'package:kumbod/model/services/utils/cache/hive_cache_service.dart';
import 'package:kumbod/model/services/utils/http/http_methods.dart';

class HttpService {
  String? errorMessage;
  Dio? _dio;
  HiveCacheService hiveCacheService = HiveCacheService("authBox");

  static header() => {"Content-Type": "application/json"};

  Future<HttpService> init(String baseUrl) async {
    _dio = Dio(BaseOptions(baseUrl: baseUrl, headers: header()));
    initInterceptors();
    return this;
  }

  String getAccessToken() {
    final String _accessToken =
        hiveCacheService.getInfo(pathName: "accessToken");
    return "Bearer $_accessToken";
  }

  void initInterceptors() {
    _dio!.interceptors.add(
      InterceptorsWrapper(
        onRequest: (requestOptions, handler) {
          requestOptions.headers = {
            "Authorization": getAccessToken(),
          };
          // print(
          //     "REQUEST[${requestOptions.method}] => PATH: ${requestOptions.path}"
          //     "=> REQUEST VALUES: ${requestOptions.queryParameters} => HEADERS: ${requestOptions.headers}");
          return handler.next(requestOptions);
        },
        onResponse: (response, handler) {
          // print("RESPONSE[${response.statusCode}] => DATA: ${response.data}");
          // // logger
          //     .i("RESPONSE[${response.statusCode}] => DATA: ${response.data}");
          return handler.next(response);
        },
        onError: (err, handler) {
          //print("Error[${err.response?.statusCode}]");
          errorMessage =
              err.response?.data['detail'] ?? err.response?.data['message'];
          //print(err.response?.data['detail']);
          // logger.i("Error[${err.response?.statusCode}]");
          return handler.next(err);
        },
      ),
    );
  }

  Future<dynamic> request({
    required String url,
    required Method method,
    dynamic payload,
    dynamic queryData,
  }) async {
    Response response;

    try {
      if (method == Method.POST) {
        response = await _dio!.post(
          url,
          data: payload,
          queryParameters: queryData,
        );
      } else if (method == Method.PUT) {
        response = await _dio!.put(
          url,
          data: payload,
          queryParameters: queryData,
        );
      } else if (method == Method.DELETE) {
        response = await _dio!.delete(
          url,
          queryParameters: queryData,
        );
      } else if (method == Method.GET) {
        response = await _dio!.get(
          url,
          queryParameters: queryData,
        );
      } else if (method == Method.PATCH) {
        response = await _dio!.patch(
          url,
          data: payload,
          queryParameters: queryData,
        );
      } else {
        throw Exception("Method Not Allowed");
      }

      if (response.statusCode == 200 || response.statusCode == 201) {
        return response;
      } else if (response.statusCode == 403) {
        throw Exception("Unauthorized");
      } else if (response.statusCode == 500) {
        throw Exception("Server Error");
      } else {
        throw Exception("Something does wen't wrong");
      }
    } on SocketException catch (_) {
      throw Exception("Not Internet Connection");
    } on FormatException catch (_) {
      throw Exception("Bad response format");
    } on DioError catch (_) {
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception("Something wen't wrong");
    }
  }
}
