// import 'package:flutter/cupertino.dart';

import 'package:alliance_rental/screens/smsVerivficationScreen.dart';
import 'package:alliance_rental/screens/userDataFormScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/loginScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AllianceRental',
      theme: ThemeData(),
      initialRoute: LoginScreen.route,
      routes: {
        LoginScreen.route: (context) => LoginScreen(),
        NumberVerificationScreen.route: (context) => NumberVerificationScreen(),
        UserDataFormScreen.route: (context) => UserDataFormScreen(),
      },
    );
  }
}
