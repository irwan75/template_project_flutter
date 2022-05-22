import 'dart:io';
import 'package:get/get_connect.dart';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';

class TrustAllCertificates {
  TrustAllCertificates._privateConstructor();

  static final TrustAllCertificates _instance =
      TrustAllCertificates._privateConstructor();

  static TrustAllCertificates get getInstance => _instance;

  http.Client sslClient() {
    bool trustSelfSigned = true;
    var ioClient = new HttpClient()
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => trustSelfSigned;
    // {
    // return (host.compareTo("domain-name.com") == 0);
    // };
    http.Client _client = IOClient(ioClient);
    return _client;
  }

}
