// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/homescreen/components/agenda_screen.dart';
import 'package:flutter_application_1/Screens/homescreen/components/configuracoes_screen.dart';
import 'package:flutter_application_1/Screens/homescreen/components/missoes/missoes_screen.dart';
import 'package:flutter_application_1/Screens/homescreen/components/suporte_screen.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int _index = 0;
  final screens = [
    AgendaScreen(),
    MissoesScreen(),
    SuporteScreen(),
    ConfigScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: screens[_index],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: grey3,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 2.5),
          child: GNav(
            selectedIndex: _index,
            onTabChange: (value) {
              setState(() {
                _index = value;
              });
            },
            tabBackgroundColor: red1,
            activeColor: Colors.white,
            gap: 10.0,
            tabs: [
              GButton(
                icon: Icons.calendar_month,
                iconColor: grey3,
                text: 'Agenda',
              ),
              GButton(
                icon: Icons.task_alt,
                iconColor: grey3,
                text: 'Missões',
              ),
              GButton(
                icon: Icons.support_agent,
                iconColor: grey3,
                text: 'Suporte',
              ),
              GButton(
                icon: Icons.settings,
                iconColor: grey3,
                text: 'Configurações',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
