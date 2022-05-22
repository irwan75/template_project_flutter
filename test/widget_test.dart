import 'package:flutter_test/flutter_test.dart';
import 'package:services/internal_services/get_data_api.dart';

void main() {
  GetDataAPI getDataAPI = GetDataAPI();

  test("test get data failed", () {
    expect(false, getDataAPI.handleResponseStatusCode(401).status);
  });

  test("test get data success", () {
    expect(true, getDataAPI.handleResponseStatusCode(200).status);
  });

  test("test get data message succes", () {
    expect(
        "OK", getDataAPI.handleResponseStatusCode(200).handleFailure?.message);
  });

  test("test get data message Failed", () {
    expect("Bad Request",
        getDataAPI.handleResponseStatusCode(400).handleFailure?.message);
  });

  test("test get data message null", () {
    expect("", getDataAPI.handleResponseStatusCode(999).handleFailure?.message);
  });

  test("test get data message null", () {
    expect(
        null, getDataAPI.handleResponseStatusCode(999).handleFailure?.message);
  });
}
