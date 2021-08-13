import 'dart:convert';

import 'package:flutter_theme_x/core/network/response.dart';
import 'package:flutter_theme_x/core/network/util.dart';
import 'package:http/http.dart' as http;

class FTxNetwork {
  static Future<FTxNetworkResponse> post(String url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    http.Response response = await http.post(
        FTxNetworkUtil.parseToUri(url, format: true),
        headers: headers,
        body: body,
        encoding: encoding);

    return FTxNetworkResponse(response.body, response.statusCode, response);
  }

  static Future<FTxNetworkResponse> get(String url,
      {Map<String, String>? headers}) async {
    http.Response response = await http.get(
      FTxNetworkUtil.parseToUri(url, format: true),
      headers: headers,
    );

    return FTxNetworkResponse(response.body, response.statusCode, response);
  }

  static Future<FTxNetworkResponse> delete(String url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    http.Response response = await http
        .delete(FTxNetworkUtil.parseToUri(url, format: true), headers: headers);

    return FTxNetworkResponse(response.body, response.statusCode, response);
  }

  static Future<FTxNetworkResponse> put(String url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    http.Response response = await http
        .put(FTxNetworkUtil.parseToUri(url, format: true), headers: headers);

    return FTxNetworkResponse(response.body, response.statusCode, response);
  }

  static Future<FTxNetworkResponse> patch(String url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    http.Response response = await http
        .patch(FTxNetworkUtil.parseToUri(url, format: true), headers: headers);

    return FTxNetworkResponse(response.body, response.statusCode, response);
  }

  static Future<FTxNetworkResponse> head(String url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    http.Response response = await http
        .head(FTxNetworkUtil.parseToUri(url, format: true), headers: headers);

    return FTxNetworkResponse(response.body, response.statusCode, response);
  }
}
