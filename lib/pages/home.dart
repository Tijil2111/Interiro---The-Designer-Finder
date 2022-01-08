import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  Map<String, double> dataMap = {
    "Interiored Homes": 2,
    "Non-Interiored Homes": 5,
    "Don't Know about this": 1,
  };
  final List<Color> colors = [
    Colors.grey,
    Colors.grey,
    Colors.grey,
    Colors.grey,
  ];
  final List<String> letters = [
    "Always try to get some extra work done for free when paying large amounts",
    "Try to get rates from different people who knows you may get a discount",
    "Don't underestimate non-professional workers. Don't judge a book by its cover",
    "Never ever make your house interiored by a friend. This buisness often leads to fights and more",

  ];

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
    body: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
            child: Text(
              'Dashboard',
              style: GoogleFonts.pacifico(
                textStyle: const TextStyle(fontSize: 30),
              ),
            ),
          ),
          const SizedBox(
            height:30
          ),
          PieChart(
            dataMap: dataMap,
            animationDuration: Duration(milliseconds: 800),
            chartLegendSpacing: 32,
            chartRadius: MediaQuery.of(context).size.width / 3.2,
            initialAngleInDegree: 0,
            chartType: ChartType.disc,
            ringStrokeWidth: 32,
            legendOptions: const LegendOptions(
              showLegendsInRow: false,
              legendPosition: LegendPosition.right,
              showLegends: true,
              legendTextStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            chartValuesOptions: const ChartValuesOptions(
              showChartValueBackground: true,
              showChartValues: true,
              showChartValuesInPercentage: false,
              showChartValuesOutside: false,
              decimalPlaces: 1,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
            child: Text(
              'Some tips for ya (Scroll side-ways to see more)',
              style: GoogleFonts.pacifico(
                textStyle: const TextStyle(fontSize: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
            child: Container(
              height: 200,
              child: CarouselSlider.builder(
                  unlimitedMode: true,
                  slideBuilder: (index) {
                    return Container(
                      alignment: Alignment.center,
                      color: colors[index],
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          letters[index],
                          style: GoogleFonts.pacifico(
                            textStyle: const TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                    );
                  },
                  slideTransform: CubeTransform(),
                  itemCount: colors.length
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        title: Text('Manit Rastogi'),
                        subtitle: Text('Founder of Morphogenesis, Indian Based'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
              child: Card(
              child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget> [
                ListTile(
                  title: Text('KELLY WEARSTLER'),
                  subtitle: Text('USA based best Interior Desiger'),
                ),

              ],
          ),
          ),),
            ),
        const SizedBox(
          height:20
        ),
         RaisedButton(
           onPressed:(){
             Navigator.pushReplacementNamed(context, '/interior');
           },
           color: Colors.grey,
           child: Text(
             'See More'
           ),
         ),

        ],
      ),
    ),
    );


  }
}
