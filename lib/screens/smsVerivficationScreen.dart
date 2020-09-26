import 'package:alliance_rental/screens/userDataFormScreen.dart';
import 'package:alliance_rental/widgets/customFlatButtonWidget.dart';
import 'package:alliance_rental/widgets/customFlexibleSpaceWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NumberVerificationScreen extends StatelessWidget {
  static const route = '/number_verification_screen';
  const NumberVerificationScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        flexibleSpace: CustomFlexibleSpaceWidget(showLogo: true),
        toolbarHeight: size.height * 0.1,
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 10,
          bottom: 10,
          left: 10,
          right: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 0.35,
              width: size.width * 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Код',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      bottom: 8,
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                      ),
                      showCursor: false,
                      autofocus: false,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                          top: 4,
                          bottom: 15,
                          left: 15,
                          right: 15,
                        ),
                        border: OutlineInputBorder(
                          //  borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(208, 211, 216, 1),
                              width: 0.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          //  borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(208, 211, 216, 1),
                              width: 0.5),
                        ),
                        hintText: 'Введите код',
                        hintStyle: TextStyle(
                          color: Colors.black26,
                          letterSpacing: 0,
                        ),
                        disabledBorder: OutlineInputBorder(
                          //  borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(208, 211, 216, 1),
                              width: 0.5),
                        ),
                        enabledBorder: OutlineInputBorder(
                          //  borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(208, 211, 216, 1),
                              width: 0.5),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          //  borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(208, 211, 216, 1),
                              width: 0.5),
                        ),
                        errorBorder: OutlineInputBorder(
                          //  borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(208, 211, 216, 1),
                              width: 0.5),
                        ),
                      ),
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.fill,
                    child: RichText(
                      maxLines: 1,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                'Повторная отправка кода будет возможна через ',
                            style: TextStyle(
                              color: Colors.black26,
                            ),
                          ),
                          TextSpan(
                            text: '05:00',
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                // bottom: MediaQuery.of(context).viewInsets.bottom,
                horizontal: 0,
                vertical: size.height * 0.01,
              ),
              child: CustomFlatButtonWidget(
                size: size,
                text: 'Далее',
                onPressed: () =>
                    Navigator.of(context).pushNamed(UserDataFormScreen.route),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
