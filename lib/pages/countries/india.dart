import 'package:flutter/material.dart';
import 'list.dart';
import 'custom_card.dart';

class India extends StatelessWidget {
  List<Names> names = [
    Names(name: 'Manit Rastogi', location: 'http://www.morphogenesis.org/about-us/our-people/'),
    Names(name: 'Tanya Gyani', location: 'http://www.tanyagyani.com/ '),
    Names(name: 'Gauri Khan', location: 'http://www.gaurikhan.in/'),
    Names(name: 'Ambrish Arora', location: 'http://studiolotus.in/'),
    Names(name: 'Twinkle Khanna', location: 'http://thewhitewindow.co/'),
    Names(name: 'Monica Khanna', location: 'http://www.monicakhannadesigns.com/'),
    Names(name: 'Sussanne Khan', location: 'http://www.thecharcoalproject.com/'),
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
