import 'package:alliance_rental/widgets/titleWidget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

//TODO Scrollable.ensureVisible implement scrolling to email field while it is focused

class UserDataFormScreen extends StatefulWidget {
  static const route = '/user_data_form_screen';
  UserDataFormScreen({Key key}) : super(key: key);

  @override
  _UserDataFormScreenState createState() => _UserDataFormScreenState();
}

class _UserDataFormScreenState extends State<UserDataFormScreen> {
  final emailKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    // if (MediaQuery.of(context).viewInsets.bottom != null) {
    //   Scrollable.ensureVisible(emailKey.currentContext);
    // }
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 10,
        flexibleSpace: TitleWidget(),
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
              height: size.height * 0.65,
              width: size.width * 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ваши данные',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // TODO photo picker event
                    },
                    child: Container(
                      child: Image.asset(
                        'assets/images/photoPlaceholder.png',
                        height: size.height * 0.1,
                        fit: BoxFit.cover,
                      ),
                      padding: EdgeInsets.only(top: 10),
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(maxHeight: size.height * 0.6),
                    padding: const EdgeInsets.only(
                      top: 2,
                      bottom: 2,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          UserDataFormWidget(
                            title: 'Имя',
                            keyboardType: TextInputType.name,
                          ),
                          UserDataFormWidget(
                            title: 'Фамилия',
                            keyboardType: TextInputType.name,
                          ),
                          Text(
                              'Водитель узнает вас по фото и будет обращаться по имени'),
                          UserDataFormWidget(
                            title: 'E-mail',
                            keyboardType: TextInputType.emailAddress,
                          ),
                          Text(
                            'На этот адрес мы будем присылать чеки после оплаты',
                            key: emailKey,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                  // bottom: MediaQuery.of(context).viewInsets.bottom,
                  horizontal: 0,
                  vertical: size.height * 0.01,
                ),
                child: Column(
                  children: [
                    Text(
                        'Продолжая вы даете согласие на обработку персональных данных'),
                    FlatButton(
                      color: Color.fromRGBO(20, 20, 32, 1),
                      minWidth: size.width,
                      height: size.height * 0.08,
                      onPressed: () {
                        // TODO
                        // Navigator.of(context).pushNamed();
                      },
                      child: SizedBox(
                        width: size.width * 0.3,
                        height: size.height * 0.035,
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'Далее',
                            style: TextStyle(
                              color: Color.fromRGBO(228, 154, 3, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class UserDataFormWidget extends StatelessWidget {
  const UserDataFormWidget(
      {this.keyboardType, this.title, this.hintText, Key key})
      : super(key: key);
  final TextInputType keyboardType;
  final String title;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          TextFormField(
            enableInteractiveSelection: true,
            keyboardType: keyboardType,
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
                    color: Color.fromRGBO(208, 211, 216, 1), width: 0.5),
              ),
              focusedBorder: OutlineInputBorder(
                //  borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    color: Color.fromRGBO(208, 211, 216, 1), width: 0.5),
              ),
              hintText: hintText,
              hintStyle: TextStyle(
                color: Colors.black26,
                letterSpacing: 0,
              ),
              disabledBorder: OutlineInputBorder(
                //  borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    color: Color.fromRGBO(208, 211, 216, 1), width: 0.5),
              ),
              enabledBorder: OutlineInputBorder(
                //  borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    color: Color.fromRGBO(208, 211, 216, 1), width: 0.5),
              ),
              focusedErrorBorder: OutlineInputBorder(
                //  borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    color: Color.fromRGBO(208, 211, 216, 1), width: 0.5),
              ),
              errorBorder: OutlineInputBorder(
                //  borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    color: Color.fromRGBO(208, 211, 216, 1), width: 0.5),
              ),
            ),
          )
        ],
      ),
    );
  }
}
