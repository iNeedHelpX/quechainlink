import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:provider/provider.dart';
import 'package:quechainlink/auth/loginservice.dart';
import 'package:quechainlink/colors/bluegreen_gradient.dart';
import 'package:quechainlink/colors/colours_list.dart';
import 'package:quechainlink/start/start.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: bg,

        //this next part has a terinary operator. If the person is loggedin it will show user information, otherwise they are asked to log in with their google account. The ? indicates a terinary condition.
        body: Container(
          child:
              //this is what occurs if the user is not logged in. It prompts them to login with their google account
              Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                child: Container(
                  padding: EdgeInsets.fromLTRB(15, 20, 15, 5),
                  decoration: BoxDecoration(
                    gradient: blueGreenGrad(),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'No need to register, just sign in with Google!',
                        style: TextStyle(
                          color: gold,
                          fontSize: 20,
                          fontFamily: 'gogh',
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SignInButton(
                        Buttons.Google,
                        padding: EdgeInsets.all(5),
                        text: "Sign in with Google",
                        onPressed: () {
                          //login with google logic
                          final provider =
                              Provider.of<LoginService>(context, listen: false);
                          provider.signInWithGoogle();
                        },
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
