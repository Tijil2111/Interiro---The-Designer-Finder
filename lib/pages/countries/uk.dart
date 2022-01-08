import 'package:flutter/material.dart';
import 'list.dart';
import 'custom_card.dart';


class UK extends StatelessWidget {
  List<Names> names = [
    Names(name: 'BEN THOMPSON', location: ' bwtlondon.com'),
    Names(name: 'CAMPBELL-REY', location: 'campbell-rey.com'),
    Names(name: 'CHARLES MELLERSH', location: 'charlesmellersh.com'),
    Names(name: 'RUN FOR THE HILLS', location: 'runforthehills.com'),
    Names(name: 'NUNE', location: 'nunenune.com'),
    Names(name: 'THESE WHITE WALLS', location: 'thesewhitewalls.com'),
    Names(name: 'SARAH DELANEY DESIGN', location: 'sarahdelaneydesign.co.uk'),
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
