// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/homescreen/components/home_background.dart';
import 'package:flutter_application_1/constants.dart';
import '../../../../components/hero_dialog_route.dart';

class MissoesScreen extends StatefulWidget {
  const MissoesScreen({super.key});

  @override
  State<MissoesScreen> createState() => _MissoesScreenState();
}

class _MissoesScreenState extends State<MissoesScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return HomeBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height * 0.15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: size.width * 0.7,
                height: size.height * 0.075,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: red1, width: size.width * 0.005),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.search,
                        color: yellow,
                      ),
                      onPressed: () {
                        print('icon pressed');
                      },
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(12),
                  ),
                ),
              ),
              SizedBox(
                width: size.width * 0.05,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(HeroDialogRoute(builder: (context) {
                        return FilterCard();
                      }));
                    },
                    child: Hero(
                      tag: _addFilter,
                      child: Icon(
                        Icons.filter_alt,
                        color: yellow,
                      ),
                    ),
                  ),
                  Text('Filtro'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

const String _addFilter = 'add-filter';

class FilterCard extends StatefulWidget {
  const FilterCard({super.key});

  @override
  State<FilterCard> createState() => _FilterCardState();
}

class _FilterCardState extends State<FilterCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Hero(
          tag: _addFilter,
          child: Container(
            height: size.height * 0.5,
            width: size.width * 0.8,
            decoration: BoxDecoration(
              color: grey2,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.filter_alt,
                        color: yellow,
                      ),
                      Text('Opções de Filtro:', style: TextStyle(fontSize: 15, color: Colors.black),)
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.check_box_outline_blank,
                        color: red1,
                      ),
                      Text('Em andamento', style: TextStyle(fontSize: 15, color: Colors.black),),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.check_box_outline_blank,
                        color: red1,
                      ),
                      Text('Cancelados', style: TextStyle(fontSize: 15, color: Colors.black),),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.check_box_outline_blank,
                        color: red1,
                      ),
                      Text('Concluídos', style: TextStyle(fontSize: 15, color: Colors.black),),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
