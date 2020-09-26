import 'package:alliance_rental/screens/paymentScreen.dart';
import 'package:alliance_rental/widgets/customFlatButtonWidget.dart';
import 'package:alliance_rental/widgets/customFlexibleSpaceWidget.dart';
import 'package:flutter/material.dart';

class CardAddScreen extends StatelessWidget {
  static const route = '/card_add_screen';
  const CardAddScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: size.height * 0.1,
        flexibleSpace: CustomFlexibleSpaceWidget(
          showLogo: false,
        ),
        centerTitle: true,
        title: Text(
          'Добавить карту',
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 10,
          bottom: 10,
          left: 10,
          right: 10,
        ),
        child: SizedBox(
          height: size.height * 0.65,
          // width: size.width * 0.8,
          child: Column(
            children: [
              Text(
                'Данные карты',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                child: TextFormField(),
                // height: 100,
                // width: size.width * 0.8,
              ),
              SizedBox(
                child: Row(
                  children: [
                    SizedBox(
                      child: TextFormField(),
                      width: size.width * 0.45,
                    ),
                    SizedBox(
                      child: TextFormField(),
                      width: size.width * 0.45,
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
                // height: 100,
                // width: size.width * 0.9,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: CustomFlatButtonWidget(
                  text: 'Сохранить',
                  size: size,
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(PaymentScreen.route);
                  },
                ),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ),
      ),
    );
  }
}
