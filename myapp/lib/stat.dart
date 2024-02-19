import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class Stat extends StatefulWidget {
  const Stat({Key? key}) : super(key: key);

  @override
  _StatState createState() => _StatState();
}

class _StatState extends State<Stat> {
  DateTime now = DateTime.now();
  late DateTime startOfWeek;

  final List<charts.Series> seriesList = _createSampleData();

  static List<charts.Series<LinearMood, int>> _createSampleData() {
    final data = [
      new LinearMood(0, 5),
      new LinearMood(1, 25),
      new LinearMood(2, 100),
      new LinearMood(3, 75),
      new LinearMood(4, 50),
      new LinearMood(5, 85),
      new LinearMood(6, 40),
    ];

    return [
      new charts.Series<LinearMood, int>(
        id: 'Mood',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        areaColorFn: (_, __) =>
            charts.MaterialPalette.blue.shadeDefault.lighter,
        domainFn: (LinearMood Mood, _) => Mood.year,
        measureFn: (LinearMood Mood, _) => Mood.Mood,
        data: data,
      )
    ];
  }

  @override
  void initState() {
    super.initState();
      startOfWeek = now.subtract(Duration(days: now.weekday - 1));
    }

    @override
    Widget build(BuildContext context) {
      String formattedStartOfWeek = DateFormat('MMM d').format(startOfWeek);
      String formattedToday = DateFormat('MMM d').format(now);

      return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0, top:20.0), 
                      child: Text(
                        'TRACK \nYOUR MOODS',
                        style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.headlineMedium,
                          color: const Color.fromARGB(255, 70, 66, 68),
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  'lib/images/statMainpic.png',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          titleSpacing: 4.0,
          toolbarHeight: 130,
          toolbarOpacity: 0.9,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(18),
                bottomLeft: Radius.circular(18)),
          ),
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          elevation: 0.00,
          backgroundColor: const Color.fromARGB(255, 134, 208, 203),
        ),
        backgroundColor: const Color.fromARGB(251, 241, 255, 252),
        body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 250,
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 204, 248, 245),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              now = now.subtract(Duration(days: 7));
                              startOfWeek = startOfWeek.subtract(Duration(days: 7));
                            });
                          },
                          child: Icon(Icons.arrow_left),
                        ),
                        Text(
                          '$formattedStartOfWeek - $formattedToday',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              now = now.add(Duration(days: 7));
                              startOfWeek = startOfWeek.add(Duration(days: 7));
                            });
                          },
                          child: Icon(Icons.arrow_right),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
    child: charts.LineChart(
      seriesList as List<charts.Series<dynamic, num>>,
      defaultRenderer: charts.LineRendererConfig(includeArea: true, stacked: true),
      primaryMeasureAxis: charts.NumericAxisSpec(
        renderSpec: charts.NoneRenderSpec(),
      ),
      domainAxis: charts.NumericAxisSpec(
    tickProviderSpec: charts.StaticNumericTickProviderSpec(
    List.generate(7, (index) {
      return new charts.TickSpec(
        index,
        label: ['S', 'M', 'T', 'W', 'T', 'F', 'S'][index],
        style: new charts.TextStyleSpec(
          fontSize: 13, 
          color: charts.MaterialPalette.black,
        ),
      );
    }),
  ),
  renderSpec: charts.GridlineRendererSpec(
    labelStyle: charts.TextStyleSpec(
      fontSize: 0,
      color: charts.MaterialPalette.transparent, 
    ),
    lineStyle: charts.LineStyleSpec(
      color: charts.MaterialPalette.transparent, 
    ),
  ),
),
    ),
  ),
  
              ],
              
            ),
      ),
      Column(
        children:<Widget>[
      Padding(
  padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 15, bottom: 15), // adjust the padding as needed
  child: TableCalendar(
    firstDay: DateTime.utc(2010, 10, 16),
    lastDay: DateTime.utc(2030, 3, 14),
    focusedDay: DateTime.now(),
  ),
),
Align(
  alignment: Alignment.centerLeft,
  child: Padding(
    padding: EdgeInsets.only(left: 30.0, top: 15.0, bottom: 15.0),
    child: Column(
      children: [
        Padding(
  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
  child: Row(
    children: [
      Image.asset(
        'lib/images/loveearth (1).png',
        width: 50,
      ),
      Padding(
        padding: EdgeInsets.only(left: 20.0),
        child: Text(
          'Your text here', // replace with your text
          style: TextStyle(fontSize: 16),
        ),
      ),
    ],
  ),
),
Padding(
  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
  child: Row(
    children: [
      Image.asset(
        'lib/images/loveearth (2).png',
        width: 50,
      ),
      Padding(
        padding: EdgeInsets.only(left: 20.0),
        child: Text(
          'Your text here', // replace with your text
          style: TextStyle(fontSize: 16),
        ),
      ),
    ],
  ),
),
Padding(
  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
  child: Row(
    children: [
      Image.asset(
        'lib/images/loveearth (3).png',
        width: 50,
      ),
      Padding(
        padding: EdgeInsets.only(left: 20.0),
        child: Text(
          'Your text here', // replace with your text
          style: TextStyle(fontSize: 16),
        ),
      ),
    ],
  ),
),
Padding(
  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
  child: Row(
    children: [
      Image.asset(
        'lib/images/loveearth (4).png',
        width: 50,
      ),
      Padding(
        padding: EdgeInsets.only(left: 20.0),
        child: Text(
          'Your text here', // replace with your text
          style: TextStyle(fontSize: 16),
        ),
      ),
    ],
  ),
),
Padding(
  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
  child: Row(
    children: [
      Image.asset(
        'lib/images/loveearth (5).png',
        width: 50,
      ),
      Padding(
        padding: EdgeInsets.only(left: 20.0),
        child: Text(
          'Your text here', // replace with your text
          style: TextStyle(fontSize: 16),
        ),
      ),
    ],
  ),
),
      ],
    ),
  ),
),
     ],),

    ],),
        ),
    );

  }
}

class LinearMood {
  final int year;
  final int Mood;

  LinearMood(this.year, this.Mood);
}
