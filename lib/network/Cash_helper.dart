import 'package:shared_preferences/shared_preferences.dart';

class CashHelper {
  static late SharedPreferences sharedPreferences;

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> setData(
      {required String Key, required bool value}) async {
    return await sharedPreferences.setBool(Key, value);
  }

  static bool? getData({required String Key}) {
    return sharedPreferences.getBool(Key);
  }
}
