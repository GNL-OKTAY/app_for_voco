const String _emailRegExp =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
const String _speacialCharacterRexExp = r'^[a-zA-Z0-9]+$';

//bir açıklama:
//r'^
//(?=.*[A-Z]) //en az bir büyük harf içermelidir
//(?=.*[a-z]) //en az bir küçük harf içermelidir
//(?=.*?[0-9]) //en az bir rakam içermelidir
//(?=.*?[!@#\$&*~]) //en az bir Özel karakter içermelidir
//.{8,} //En az 8 karakter uzunluğunda olmalı
//$'
const String _powerfullPasswordRexExp =
    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';

class RegexHelper {
  RegexHelper._();
  static final shared = RegexHelper._();

  bool isCorrectEmail({required String email}) {
    final regExp = RegExp(_emailRegExp);
    return regExp.hasMatch(email);
  }

  bool hasSpecialCharacter({required String email}) {
    final regExp = RegExp(_speacialCharacterRexExp);
    return regExp.hasMatch(email);
  }

  bool isPowerfulPassword({required String email}) {
    final regExp = RegExp(_powerfullPasswordRexExp);
    return regExp.hasMatch(email);
  }
}
