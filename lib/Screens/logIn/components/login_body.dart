// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/logIn/components/login_background.dart';
import 'package:flutter_application_1/Screens/newpassword/insertCPF_screen.dart';
import 'package:flutter_application_1/components/roundedbutton.dart';
import 'package:flutter_application_1/constants.dart';
import '../../../components/PasswordCheck.dart';
import '../../../components/rounded_input_field.dart';
import '../../../components/rounded_password_field.dart';
import '../../homescreen/home_screen.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

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
            Padding(
              padding: const EdgeInsets.all(25),
              child: Text(
                'Olá querido funcionário, insira suas\ninformações para prosseguir:',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              child: Text(
                'CPF',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 17, color: red1),
              ),
              alignment: Alignment.centerLeft,
              width: size.width * 0.7,
            ),
            RoundedInputField(
              hintText: 'Ex.: 000.000.000-00',
              onChanged: (value) {},
            ),
            Container(
              child: Text(
                'Senha',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 17, color: red1),
              ),
              alignment: Alignment.centerLeft,
              width: size.width * 0.7,
            ),
            RoundedPasswordField(hintText: 'Insira sua senha',
            ),
            PasswordCheck(
              tap: (BuildContext context) {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return InsertCpfScreen();
                }));
              },
            ),
            RoundedButton(
                buttonHeight: 0.075,
                buttonWidth: 0.7,
                fontSize: 18,
                text: 'Entrar',
                press: (BuildContext context) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return HomeScreen();
                  }));
                }),
          ],
        ),
      ),
    );
  }
}
