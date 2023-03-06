import 'package:flutter/material.dart';

class HomeBackground extends StatelessWidget {
  final Widget child;
  const HomeBackground({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              'assets/images/grayItem.png',
              width: size.width * 0.2,
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Image.asset('assets/images/Logo.png'),
            width: size.width * 0.23,
          ),
          child,
        ],
      ),
    );
  }
}