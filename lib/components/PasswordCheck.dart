// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../constants.dart';

class PasswordCheck extends StatelessWidget {
  final bool password;
  final Function tap;
  const PasswordCheck({
    Key? key,
    required this.tap,
    this.password = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 30),
      child: GestureDetector(
        onTap: () {
          tap(context);
        },
        child: Text(
          password ? 'Esqueceu sua senha?' : 'Lembrou-se da senha?',
          style: TextStyle(color: red1),
        ),
      ),
    );
  }
}
