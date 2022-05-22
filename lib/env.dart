// GENERATED CODE - DO NOT MODIFY BY HAND

class Env {
  Env._();

  static const String defineAppName = String.fromEnvironment('DEFINE_APP_NAME',
      defaultValue: 'Mall Pelayanan Publik');

  static const String defineAppSuffix =
      String.fromEnvironment('DEFINE_APP_SUFFIX');

  static const MyEnum flavor = MyEnum._(String.fromEnvironment('FLAVOR'));

  static const String baseUrl = String.fromEnvironment('BASE_URL');

  static const int versionCode = int.fromEnvironment('VERSION_CODE');

  static const String versionName = String.fromEnvironment('VERSION_NAME');
}

class MyEnum {
  const MyEnum._(this.value);

  final String value;

  static const MyEnum dev = MyEnum._('dev');

  static const MyEnum stg = MyEnum._('stg');

  static const MyEnum prod = MyEnum._('prod');

  bool get isDev => this == dev;
  bool get isStg => this == stg;
  bool get isProd => this == prod;
  @override
  String toString() => 'MyEnum.$value';
}
