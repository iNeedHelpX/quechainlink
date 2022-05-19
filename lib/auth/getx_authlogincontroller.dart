import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:quechainlink/models/user.dart';

class AuthLoginController extends GetxController {
  LoginUserModel? _userModel;
  final googleSignin = GoogleSignIn();
  final FlutterSecureStorage secureStorage = FlutterSecureStorage();

  var googleAccount = Rx<GoogleSignInAccount?>(null);
  // var fbSig = FacebookLogin();
  // var fbAcc = Rx<FacebookLoginResult?>(null);

  googlelogin() async {
    googleAccount.value = await googleSignin.signIn();
    var email = writeSecureData('email', '${googleSignin.currentUser?.email}');
    print(email);
  }

  Future<dynamic> writeSecureData(String key, String value) async {
    await secureStorage.write(key: key, value: googleSignin.currentUser?.email);
  }

  Future<String?> getToken() async {
    return await secureStorage.read(key: '"token');
  }

  // facebookSignIn() async {
  //   fbAcc.value = await fbSig.logIn();
  // }
}

//This class is not in use! google login controller
class GoogleSignInProvider extends ChangeNotifier {
  final googleSignIn = GoogleSignIn();

  GoogleSignInAccount? _user;
  GoogleSignInAccount get user => _user!;

  Future googleLogin2() async {
    final googleUser = await googleSignIn.signIn();
    if (googleUser == null) return;
    _user = googleUser;
    final googleAuth = await googleUser.authentication;
    final cred = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    await FirebaseAuth.instance.signInWithCredential(cred);
    notifyListeners();
  }

  Future googlelogout() async {
    final logout = await googleSignIn.signOut();
  }
}
