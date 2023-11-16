import 'package:app_for_voco/feature/auth/service/model/login_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

const userTokenKey = 'token';

class LoginTokenService {
  const LoginTokenService._();
  static const shared = LoginTokenService._();

  Future<String?> fetchLoginToken() async {
    // Kullanıcı giriş yaptığında tokeni shared preferencesa kaydediyorum
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var response = prefs.getString(userTokenKey);
    return response;
  }

  Future<void> saveLoginToken(LoginResponseModel model) async {
    // Kullanıcı giriş yaptığında tokeni shared preferencesa kaydediyorum
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(userTokenKey, model.token.toString());
  }

  Future<void> deleteLoginToken() async {
    // Kullanıcı giriş yaptığında tokeni shared preferencesa kaydediyorum
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(userTokenKey);
  }
}
