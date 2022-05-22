import 'package:shared_preferences/shared_preferences.dart';

abstract class StringSharedPreferences {
  static final onBoarding = "onboardingCache";
  static final tokenUser = "tokenUser";
  static final loginUser = "loginUser";
}

class SharedPref {
  SharedPref._privateConstructor();

  static final SharedPref _instance = SharedPref._privateConstructor();

  static SharedPref get getInstance => _instance;

  void setPrefLogin(int val) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(StringSharedPreferences.loginUser, val);
  }

  Future<int> getPrefLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int value = prefs.getInt(StringSharedPreferences.loginUser) ?? 0;
    return value;
  }

  void setTokenUser(String val) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(StringSharedPreferences.tokenUser, val);
  }

  Future<String> getTokenUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String value = prefs.getString(StringSharedPreferences.tokenUser) ?? "";
    return value;
  }

  Future<bool> deleteUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(StringSharedPreferences.loginUser);
    return true;
  }
}
