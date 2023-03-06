// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/logIn/components/login_background.dart';
import 'package:flutter_application_1/components/rounded_input_field.dart';

import '../../../components/roundedbutton.dart';
import '../../../components/textfieldcontainer.dart';
import '../../../constants.dart';
import '../../newpassword/new_password_screen.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: BackgroundLogin(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Logo.png',
              width: size.width * 0.32,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Text(
              'Insira o código que recebeu:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            TextFieldContainer(
              child: TextField(
                onChanged: (value) {
                },
                decoration: InputDecoration(
                  icon: Icon(Icons.password, color: grey3),
                  hintText: '',
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedButton(
                  buttonHeight: 0.075,
                  buttonWidth: 0.7,
                  fontSize: 18,
                  text: 'Continuar',
                  press: (BuildContext context) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return NewPasswordScreen();
                    }));
                  }),
          ],
        ),
      ),
    );
  }
}
