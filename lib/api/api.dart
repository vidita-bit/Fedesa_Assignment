import 'dart:async';
import 'dart:convert';

import 'package:eventtask/api/url.dart';
import 'package:http/http.dart';

Future eventData(bodyData) async {
  Map<String, String> headers = {
    "Content-type": "application/json",
    "Authorization": "567jnjn",
  };
  var uri = Uri.parse(Api.createEvent);
  var responseJson;
  Response response =
      await post(uri, headers: headers, body: jsonEncode(bodyData)).timeout(
    const Duration(seconds: 60),
    onTimeout: () => throw TimeoutException(
        'The connection has timed out, Please try again!'),
  );

  responseJson = response;
  return responseJson;
}
