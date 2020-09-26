import 'package:flutter/material.dart';

class CustomFlatButtonWidget extends StatelessWidget {
  const CustomFlatButtonWidget({
    this.onPressed,
    Key key,
    @required this.size,
    @required this.text,
  }) : super(key: key);
  final Function onPressed;
  final Size size;
  final String text;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Color.fromRGBO(20, 20, 32, 1),
      minWidth: size.width,
      height: size.height * 0.08,
      onPressed: onPressed,
      child: SizedBox(
        width: size.width * 0.3,
        height: size.height * 0.035,
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            text,
            style: TextStyle(
              color: Color.fromRGBO(228, 154, 3, 1),
            ),
          ),
        ),
      ),
    );
  }
}
