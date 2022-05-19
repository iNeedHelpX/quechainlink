import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';
import 'package:quechainlink/auth/getx_authlogincontroller.dart';
import 'package:quechainlink/auth/login_controller.dart';
import 'package:quechainlink/auth/loginservice.dart';
import 'package:quechainlink/colors/colours_list.dart';

class LoginContainer extends StatelessWidget {
  final controller = Get.put(AuthLoginController());

  LoginContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      // if (controller.user.serverAuthCode == null) {
      if (controller.googleAccount() == null) {
        return getLogin();
      } else {
        return welcome();
      }
    });
    //decoration: BoxDecoration(gradient: gradSheet()),
  }

//if the user is logged in present this column. Will be cart
  Column welcome() {
    return Column(
      children: [
        Text(
          "Hello ${controller.googleAccount.value?.displayName} ",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w800,
            color: brightpink,
          ),
        ),
      ],
    );
  }

//if user is not logged in show this column to get them logged in
  Column getLogin() {
    return Column(
      children: [
        Text(
          'Login to shop with us',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w800,
            color: gold,
          ),
        ),
        SizedBox(height: 10),
        SignInButton(
          Buttons.Google,
          text: "Sign in with Google",
          onPressed: () {
            controller.googlelogin();
          },
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
