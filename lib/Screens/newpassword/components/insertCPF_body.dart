// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/newpassword/recover_method_screen.dart';

import '../../../components/rounded_input_field.dart';
import '../../../components/roundedbutton.dart';
import '../../../constants.dart';
import '../../logIn/components/login_background.dart';

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
            Padding(
                padding: const EdgeInsets.all(25),
                child: Text(
                  'Insira seu CPF para receber o código\ncom as informações registradas:',
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
              SizedBox(height: size.height*0.07,),
              RoundedButton(
                  buttonHeight: 0.075,
                  buttonWidth: 0.7,
                  fontSize: 18,
                  text: 'Continuar',
                  press: (BuildContext context) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return RecoverMethodScreen();
                    }));
                  }),
          ],
        ),
      ),
    );
  }
}
