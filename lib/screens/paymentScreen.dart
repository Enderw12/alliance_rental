import 'package:alliance_rental/screens/cardAddScreen.dart';
import 'package:alliance_rental/widgets/customFlatButtonWidget.dart';
import 'package:alliance_rental/widgets/customFlexibleSpaceWidget.dart';
import 'package:alliance_rental/widgets/drawerWidget.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  static const route = '/payment_screen';
  PaymentScreen({Key key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Оплата'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        toolbarHeight: size.height * 0.1,
        flexibleSpace: CustomFlexibleSpaceWidget(
          showLogo: false,
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Text(
              'СПОСОБ ОПЛАТЫ',
              style: TextStyle(
                  color: Colors.grey[400], fontWeight: FontWeight.bold),
            ),
            width: size.width,
            height: size.height * 0.05,
            padding: EdgeInsets.only(left: 10),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(color: Colors.grey[200]),
          ),
          Expanded(
            child: ListView(
              children: [
                SizedBox(
                  height: 10,
                ),
                Card(
                  margin: EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 0,
                      left: 10,
                      right: 0,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey[100],
                              ),
                              width: 40,
                              height: 30,
                              child: Image.asset(
                                'assets/images/visa-logo-transparent.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '1234 **** **** 5678',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.start,
                        ),
                        Row(
                          children: [
                            Text(
                              'Дата истечения срока действия: 08/21',
                              style: TextStyle(color: Colors.grey[500]),
                            ),
                            Checkbox(
                              activeColor: Colors.yellow,
                              checkColor: Colors.white,
                              value: true,
                              onChanged: (_) {},
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ),
                  elevation: 4,
                ),
              ],
            ),
          ),
          Container(
            child: CustomFlatButtonWidget(
              size: size,
              text: 'Добавить карту',
              onPressed: () =>
                  Navigator.of(context).pushNamed(CardAddScreen.route),
            ),
            padding: EdgeInsets.only(
              top: size.height * 0.01,
              bottom: size.height * 0.01 + 10,
              left: 10,
              right: 10,
            ),
            color: Colors.transparent,
          )
        ],
      ),
      drawer: DrawerWidget(),
    );
  }
}
