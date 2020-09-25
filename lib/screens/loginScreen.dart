import 'package:alliance_rental/screens/smsVerivficationScreen.dart';
import 'package:alliance_rental/widgets/loginNumberInputWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const route = '/login_screen';
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        constraints:
            BoxConstraints(maxHeight: size.height, maxWidth: size.width),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/images/loginScreen.jpg',
                width: size.width,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: size.height * 0.7,
                width: size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [Colors.transparent, Color.fromRGBO(19, 19, 31, 1)],
                    stops: [
                      0.05,
                      0.25,
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo-alliance-rental.png',
                      width: size.width * 0.5),
                  SizedBox(
                    width: size.width * 0.9,
                    height: size.height * 0.01,
                  ),
                  SizedBox(
                    width: size.width * 0.55,
                    child: RichText(
                      textAlign: TextAlign.center,
                      softWrap: true,
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text:
                                'персонализированный сервис для заказа водителя',
                            style: TextStyle(
                              color: Colors.white38,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlatButton(
                  // shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(10)),
                  color: Color.fromRGBO(228, 154, 3, 1),
                  minWidth: size.width * 0.8,
                  height: size.height * 0.08,
                  onPressed: () {
                    // TODO implement event call for 'Next' button
                    Navigator.of(context)
                        .pushNamed(NumberVerificationScreen.route);
                  },
                  child: SizedBox(
                    width: size.width * 0.3,
                    height: size.height * 0.035,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'Далее',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.17,
                  width: size.width,
                ),
              ],
            ),
            LoginNumberInputWidget(),
          ],
        ),
      ),
    );
  }
}
