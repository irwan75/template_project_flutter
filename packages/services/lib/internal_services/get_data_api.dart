import 'package:data/models/others/tupple.dart';
import 'package:data/models/others/handle_failure.dart';
import 'package:data/models/others/on_success.dart';
import 'package:data/models/others/object_body.dart';
import 'package:data/models/others/tupple_handle_status.dart';
import 'package:http/http.dart' as http;

class GetDataAPI {
  Future<Tupple<HandleFailure, OnSuccess>> getdataAPI(
      {required String baseUrl,
      required String endPoint,
      required String nullSafety}) async {
    try {
      var responseResult = await http.post(Uri.parse(baseUrl + endPoint));
      var handleResponseStatus =
          handleResponseStatusCode(responseResult.statusCode);
      if (handleResponseStatus.status!) {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure,
            onSuccess: OnSuccess(responseData: responseResult.body));
      } else {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure, onSuccess: null);
      }
    } on Exception catch (e) {
      return Tupple(
          handleFailure: HandleFailure(),
          onSuccess: OnSuccess(responseData: nullSafety));
    } finally {
      return Tupple(
          handleFailure: HandleFailure(),
          onSuccess: OnSuccess(responseData: nullSafety));
    }
  }

  Future<Tupple<HandleFailure, OnSuccess>> getdataAPIHeaders(
      {required String baseUrl,
      required String endPoint,
      required Map<String, String> headers,
      required String nullSafety}) async {
    try {
      var responseResult =
          await http.post(Uri.parse(baseUrl + endPoint), headers: headers);
      var handleResponseStatus =
          handleResponseStatusCode(responseResult.statusCode);
      if (handleResponseStatus.status!) {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure,
            onSuccess: OnSuccess(responseData: responseResult.body));
      } else {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure, onSuccess: null);
      }
    } on Exception catch (e) {
      return Tupple(
          handleFailure: HandleFailure(),
          onSuccess: OnSuccess(responseData: nullSafety));
    } finally {
      return Tupple(
          handleFailure: HandleFailure(),
          onSuccess: OnSuccess(responseData: nullSafety));
    }
  }

  Future<Tupple<HandleFailure, OnSuccess>> getdataAPIHeadersBody(
      {required String baseUrl,
      required String endPoint,
      required Map<String, String> headers,
      required ObjectBody bodyObject,
      required String nullSafety}) async {
    try {
      var responseResult = await http.post(Uri.parse(baseUrl + endPoint),
          headers: headers, body: bodyObject);
      var handleResponseStatus =
          handleResponseStatusCode(responseResult.statusCode);
      if (handleResponseStatus.status!) {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure,
            onSuccess: OnSuccess(responseData: responseResult.body));
      } else {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure, onSuccess: null);
      }
    } on Exception catch (e) {
      return Tupple(
          handleFailure: HandleFailure(),
          onSuccess: OnSuccess(responseData: nullSafety));
    } finally {
      return Tupple(
          handleFailure: HandleFailure(),
          onSuccess: OnSuccess(responseData: nullSafety));
    }
  }

  Future<Tupple<HandleFailure, OnSuccess>> getdataAPIBody(
      {required String baseUrl,
      required String endPoint,
      required ObjectBody bodyObject,
      required String nullSafety}) async {
    try {
      var responseResult =
          await http.post(Uri.parse(baseUrl + endPoint), body: bodyObject);
      var handleResponseStatus =
          handleResponseStatusCode(responseResult.statusCode);
      if (handleResponseStatus.status!) {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure,
            onSuccess: OnSuccess(responseData: responseResult.body));
      } else {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure, onSuccess: null);
      }
    } on Exception catch (e) {
      return Tupple(
          handleFailure: HandleFailure(),
          onSuccess: OnSuccess(responseData: nullSafety));
    } finally {
      return Tupple(
          handleFailure: HandleFailure(),
          onSuccess: OnSuccess(responseData: nullSafety));
    }
  }

  TuppleHandleStatusCode<bool, HandleFailure> handleResponseStatusCode(
      int statusCode) {
    switch (statusCode) {
      case 200:
        return TuppleHandleStatusCode(
          status: true,
          handleFailure: HandleFailure(message: "OK", statusCode: 200),
        );
      case 201:
        return TuppleHandleStatusCode(
          status: true,
          handleFailure: HandleFailure(message: "OK", statusCode: 201),
        );
      case 401:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure:
              HandleFailure(message: "Unauthorized", statusCode: 401),
        );
      case 403:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure: HandleFailure(message: "Forbidden", statusCode: 403),
        );
      case 404:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure: HandleFailure(message: "Not Found", statusCode: 404),
        );
      case 409:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure: HandleFailure(message: "Conflict", statusCode: 409),
        );
      case 504:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure:
              HandleFailure(message: "Gateway Timeout", statusCode: 504),
        );
      case 503:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure:
              HandleFailure(message: "Service Unavailable", statusCode: 503),
        );
      case 502:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure: HandleFailure(message: "Bad Gateway", statusCode: 502),
        );
      case 500:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure:
              HandleFailure(message: "Internal Server Error", statusCode: 500),
        );
      case 499:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure:
              HandleFailure(message: "Client Closed Request", statusCode: 499),
        );
      case 429:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure:
              HandleFailure(message: "Too Many Request", statusCode: 429),
        );
      case 413:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure:
              HandleFailure(message: "Payload Too Large", statusCode: 413),
        );
      case 412:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure:
              HandleFailure(message: "Precondition Failed", statusCode: 412),
        );
      case 411:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure:
              HandleFailure(message: "Length Required", statusCode: 411),
        );
      case 410:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure: HandleFailure(message: "Gone", statusCode: 410),
        );
      case 405:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure: HandleFailure(message: "Conflict", statusCode: 405),
        );
      case 400:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure: HandleFailure(message: "Bad Request", statusCode: 400),
        );
      default:
        return TuppleHandleStatusCode(status: false, handleFailure: null);
    }
  }
}
