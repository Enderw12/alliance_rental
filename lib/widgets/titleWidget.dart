import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        Image.asset(
          'assets/images/appbar.jpg',
          fit: BoxFit.cover,
        ),
        Align(
          alignment: Alignment(0, 0.6),
          child: Image.asset(
            'assets/images/logo-alliance-rental.png',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width * 0.3,
          ),
        )
      ],
    );
  }
}
