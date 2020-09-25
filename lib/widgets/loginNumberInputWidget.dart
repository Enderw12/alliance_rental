import 'package:flutter/material.dart';

class LoginNumberInputWidget extends StatefulWidget {
  LoginNumberInputWidget({this.validator, this.controller, Key key})
      : super(key: key);
  final validator;
  final controller;
  @override
  _LoginNumberInputWidgetState createState() => _LoginNumberInputWidgetState();
}

class _LoginNumberInputWidgetState extends State<LoginNumberInputWidget> {
  @override
  Widget build(BuildContext context) {
    final bottomInsets = MediaQuery.of(context).viewInsets.bottom * 1.03;
    final defaultBottomInset = MediaQuery.of(context).size.height * 0.267;
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: TextFormField(
              validator: widget.validator,
              controller: widget.controller,
              keyboardType: TextInputType.phone,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 20,
              ),
              maxLines: 1,
              textAlign: TextAlign.center,
              cursorHeight: 20,
              showCursor: false,
              decoration: InputDecoration(
                focusColor: Colors.white10,
                contentPadding: EdgeInsets.only(
                  top: 4,
                  bottom: 15,
                  left: 20,
                  right: 20,
                ),
                filled: true,
                fillColor: Colors.white10,
                focusedBorder: OutlineInputBorder(
                  // borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      color: Color.fromRGBO(205, 210, 229, 0.5), width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  //  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      color: Color.fromRGBO(205, 210, 229, 0.5), width: 1.0),
                ),
                disabledBorder: OutlineInputBorder(
                  //  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.amber, width: 1.0),
                ),
                errorBorder: OutlineInputBorder(
                  //  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.red, width: 1.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  //  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.red, width: 1.0),
                ),
                border: OutlineInputBorder(
                  //  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.amber, width: 1.0),
                ),
                hintText: 'Введите номер телефона',
                hintStyle: TextStyle(
                  color: Colors.white24,
                  letterSpacing: 0,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: (bottomInsets >= defaultBottomInset)
              ? bottomInsets
              : defaultBottomInset,
        ),
      ],
    );
  }
}
