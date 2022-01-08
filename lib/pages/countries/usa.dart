import 'package:flutter/material.dart';
import 'list.dart';
import 'custom_card.dart';

class USA extends StatelessWidget {

  List<Names> names = [
    Names(name: 'Studio O+A', location: 'https://o-plus-a.com '),
    Names(name: 'IA', location: 'http://interiorarchitects.com  '),
    Names(name: 'ICRAVE', location: 'http://icrave.com'),
    Names(name: 'Diva Interior Design', location: 'divainteriors.com '),
    Names(name: 'Lauckgroup', location: 'lauckgroup.com '),
    Names(name: '//3877', location: '3877.design '),
    Names(name: 'Indidesign', location: 'indidesign.com '),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20,20,20,20),
          child: Column(
            children: names.map((name) => InteriorCard(
              names: name,
            )).toList(),
          ),
        ),
      ),
    );
  }
}
