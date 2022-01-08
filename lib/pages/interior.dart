import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interior_designer_finder/pages/countries/australia.dart';
import 'package:interior_designer_finder/pages/countries/usa.dart';

import 'countries/india.dart';
import 'countries/uk.dart';


class Interior extends StatelessWidget {
  const Interior({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              child: Padding(
                padding: EdgeInsets.only(top:40.0),
                child: Text('Interiro', style: TextStyle(fontSize: 20),),
              ),
            ),
            ListTile(
              title: const Text('Dashboard'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/');
              },
            ),
            ListTile(
              title: const Text('All Interior Designer'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/interior');
              },
            ),
            ListTile(
              title: const Text('How To Use'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/how');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
            'Interiro'
        ),
      ),
    body:Column(
        children:[
          Row(
            children: [
              Expanded(
                child: Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          isScrollControlled:true,
                          context: context,
                          builder: (BuildContext context) {
                            return USA();
                          });
                    },
                      child: Column(
                        children: [
                          ClipRRect(
                            child: Image.network('https://media.istockphoto.com/photos/flag-of-the-united-states-picture-id524055319'),
                    ),
                          Text('USA')
                        ],
                      ),
                  ),
                ),
                flex: 2,
              ),
              Expanded(
                child: Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      ),
                      isScrollControlled:true,
                      context: context,
                      builder: (BuildContext context) {
                      return UK();
                      });
                      },
                    child: Column(
                      children: [
                        ClipRRect(
                          child: Image.network('https://media.istockphoto.com/photos/flag-picture-id1281861142'),
                        ),
                        Text('UK')
                      ],
                    ),
                  ),
                ),
                flex: 2,
              ),
            ],
          ),

          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Expanded(
                child: Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          isScrollControlled:true,
                          context: context,
                          builder: (BuildContext context) {
                            return India();
                          });
                    },
                    child: Column(
                      children: [
                        ClipRRect(
                          child: Image.network('https://media.istockphoto.com/photos/indian-flag-picture-id177387875'),
                        ),
                        Text('INDIA')
                      ],
                    ),
                  ),
                ),
                flex: 2,
              ),
              Expanded(
                child: Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          isScrollControlled:true,
                          context: context,
                          builder: (BuildContext context) {
                            return Australia();
                          });
                    },
                    child: Column(
                      children: [
                        ClipRRect(
                          child: Image.network('https://media.istockphoto.com/photos/australia-flag-picture-id530234485'),
                        ),
                        Text('AUSTRALIA')
                      ],
                    ),
                  ),
                ),
                flex: 2,
              ),
            ],
          ),

          const SizedBox(
            height: 50,
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
            child: Text(
              'More Countries Coming Soon......',
              style: GoogleFonts.pacifico(
                textStyle: const TextStyle(fontSize: 30),
              ),
            ),
          )
        ]
    ),
    );
  }
}
