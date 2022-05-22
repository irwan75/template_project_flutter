import 'dart:io';

import 'package:data/data_source/urls.dart';

class ConfigEnvironment {
  final String baseUrl = BaseUrl.baseUrlDev;
  final headers = {
    HttpHeaders.contentTypeHeader: "application/json",
  };
}
