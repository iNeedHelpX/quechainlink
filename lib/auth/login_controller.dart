import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quechainlink/pages/loginpage.dart';

import 'package:quechainlink/start/start.dart';

// class LoginController extends StatelessWidget {
//   const LoginController({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder(
//       stream: FirebaseAuth.instance.authStateChanges(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return Center(child: CircularProgressIndicator());
//         } else if (snapshot.hasData) {
//           //what this call does: presents the main page if user is logged in, if not then goes to login page
//           return Start();
//         } else if (snapshot.hasError) {
//           return Text("error");
//         } else {
//           return LoginPage();
//         }
//       },
//     );
//   }
//}
