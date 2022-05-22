import 'package:flutter_test/flutter_test.dart';
import 'package:services/internal_services/logger_serv.dart';
import 'package:services/utils/validator.dart';

void main() {

  final validator = Validator();

  test("This color white", () {
    Logger.d("This is a debug console");
    expect(1, validator.validation(1));
  });

  test("This color blue", () {
    Logger.i("This is a info console");
    expect(2, validator.validation(2));
  });
  test("This color yellow", () {
    Logger.w("This is a warning console");
    expect(4, validator.validation(4));
  });
  test("This color red", () {
    Logger.e("This is a error console");
    expect(5, validator.validation(5));
  });
}
