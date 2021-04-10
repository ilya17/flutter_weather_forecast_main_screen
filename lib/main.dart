import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView',
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red.shade400,
            title: Text('Weather Forecast'),
            elevation: 0,
          ),
          backgroundColor: Colors.red.shade400,
          body: BodyHomeWork()),
    );
  }
}

class BodyHomeWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myHomeWork();
  }
}

Widget _myHomeWork() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          Container(
            width: 350, // do it in both Container
            child: TextField(
              style: TextStyle(
                color: Colors.white,
              ),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.white),
                border: InputBorder.none,
                hintText: 'Enter City name',
              ),
            ),
          )
        ],
      ),
      _localCity(),
      _todayTemperature(),
      _dayStatistic(),
      _forecastText(),
      Container(
        height: 100,
        child: _forecastListView(),
      ),
    ],
  );
}

Widget _localCity() {
  return Column(
    children: <Widget>[
      Text(
        'Volgogradskaya Oblast, RU',
        style: TextStyle(fontSize: 30, color: Colors.white),
      ),
      Container(
        margin: EdgeInsets.only(top: 10.0),
        child: Text(
          'Friday, Apr 7, 2021',
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
      )
    ],
  );
}

Widget _todayTemperature() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(right: 20.0),
        child: Icon(Icons.wb_sunny_outlined, color: Colors.white, size: 80.0),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '14 °F',
            style: TextStyle(fontSize: 55, color: Colors.white),
          ),
          Text(
            'LIGHT SNOW',
            style: TextStyle(fontSize: 17, color: Colors.white),
          ),
        ],
      )
    ],
  );
}

Widget _dayStatistic() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Column(
        children: <Widget>[
          Icon(
            Icons.ac_unit,
            color: Colors.white,
          ),
          SizedBox(height: 5),
          Text(
            '5',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 5),
          Text(
            'km/hr',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
      Column(
        children: <Widget>[
          Icon(
            Icons.ac_unit,
            color: Colors.white,
          ),
          SizedBox(height: 5),
          Text(
            '3',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 5),
          Text(
            '%',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
      Column(
        children: <Widget>[
          Icon(
            Icons.ac_unit,
            color: Colors.white,
          ),
          SizedBox(height: 5),
          Text(
            '20',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 5),
          Text(
            '%',
            style: TextStyle(color: Colors.white),
          )
        ],
      )
    ],
  );
}

Widget _forecastText() {
  return Text(
    '7-DAY WEATHER FORECAST',
    style: TextStyle(fontSize: 17.0, color: Colors.white),
  );
}

Widget _forecastListView() {
  final List<String> daysOfTheWeeks = <String>[
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];
  final List<int> temperature = <int>[6, 10, 1, 20, 15, 8, 17];

  return ListView.builder(
      itemCount: daysOfTheWeeks.length,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemExtent: 200,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white54,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                // margin: EdgeInsets.only(bottom: 15.0),
                child: Text(
                  '${daysOfTheWeeks[index]}',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '${temperature[index].toString()} °F',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Icon(
                      Icons.wb_cloudy,
                      color: Colors.white54,
                    ),
                  )
                ],
              )
            ],
          ),
        );
      });
}