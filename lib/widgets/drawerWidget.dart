import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(color: Color.fromRGBO(19, 19, 31, 1)),
      child: SizedBox(
        child: Column(
          children: [
            SizedBox(
              child: Row(
                // TODO profile photo and name
                children: [],
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
              height: size.height * 0.2,
            ),
            Container(
              child: Row(
                children: [
                  Text(
                    'menu1',
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: Colors.white54,
                  ),
                ),
              ),
              margin: EdgeInsets.only(left: 30),
              padding: EdgeInsets.symmetric(vertical: 5),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
        ),
        width: size.width * 0.7,
      ),
    );
  }
}
