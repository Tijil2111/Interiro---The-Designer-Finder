import 'package:flutter/material.dart';
import 'list.dart';
import 'custom_card.dart';

class Australia extends StatelessWidget {

List<Names> names = [
  Names(name: 'Coco Republic Interiors', location: 'https://www.cocorepublic.com.au/interior-design'),
  Names(name: 'Williams Burton Leopardi', location: 'http://designbywbl.com.au'),
  Names(name: 'Darren Palmer Studio', location: 'https://www.darrenpalmer.com/'),
  Names(name: ' Splinter Society Interiors', location: 'http://www.splintersociety.com'),
  Names(name: 'GREG NATALE', location: 'https://www.gregnatale.com'),
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

