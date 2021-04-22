import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lab9 Weather Forecast"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Body(),
        backgroundColor: Colors.red,
      ),
    );
  }
}

Widget Body() {
  return SingleChildScrollView(
    child: Padding(
      padding: EdgeInsets.all(14.0),
      child: Column(
        children: <Widget>[
          _textField(),
          Padding(padding: EdgeInsets.only(top: 22, bottom: 22)),
          _cityDetail(),
          Padding(padding: EdgeInsets.only(top: 22, bottom: 22)),
          _temperatureDetail(),
          Padding(padding: EdgeInsets.only(top: 22, bottom: 22)),
          _extraWeatherDetail(),
          Padding(padding: EdgeInsets.only(top: 22, bottom: 22)),
          Text(
            "7-DAY WEATHER FORECAST",
            style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w300),
          ),
          _bottomDetail(),
        ],
      ),
    ),
  );
}

Row _textField() {
  return Row(
    children: <Widget>[
      Column(
        children: <Widget>[
          Icon(Icons.search, color: Colors.white,
          ),
        ],
      ),
      SizedBox(width: 14.0),
      Column(
        children: <Widget>[
          Text(
            'Enter City Name', style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ],
      ),
    ],
  );
}

Column _cityDetail() {
  return Column(
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Murmansk Oblast, RU',
            style: TextStyle(
                fontSize: 35,
                color: Colors.white,
                fontWeight: FontWeight.w300),
          ),
        ],
      ),
      Padding(padding: EdgeInsets.only(top: 10.0)),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Friday, Mar 20, 2020',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w300),
          ),
        ],
      ),
    ],
  );
}

Row _temperatureDetail() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.wb_sunny,
            color: Colors.white,
            size: 90,
          ),
        ],
      ),
      SizedBox(width: 20),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                '14 °F',
                style: TextStyle(
                    fontSize: 60,
                    color: Colors.white,
                    fontWeight: FontWeight.w100),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                'LIGHT SNOW',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

Row _extraWeatherDetail() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.ac_unit, color: Colors.white, size: 35,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                '5',
                style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.w300),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                'km/hr',
                style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ],
      ),
      SizedBox(width: 70.0),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.ac_unit, color: Colors.white, size: 35,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                '3',
                style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.w300),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                '%',
                style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ],
      ),
      SizedBox(width: 70),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.ac_unit, color: Colors.white, size: 35,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                '20',
                style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.w300),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                '%',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}


Container weekWeather(String day, String temperature) {
  return Container(
    width: 160,
    child: Card(
      elevation: 0,
      color: Colors.white38,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(
                    day,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  children: <Widget>[
                    Text(
                      temperature,
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 22),
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.wb_sunny,
                      color: Colors.white,
                      size: 35,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}


Container _bottomDetail() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 20),
    height: 130,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        weekWeather("Friday", "6 °F"),
        weekWeather("Saturday", "5 °F"),
        weekWeather("Sunday", "22 °F"),
        weekWeather("Monday", "14 °F"),
        weekWeather("Tuesday", "9 °F"),
        weekWeather("Wednesday", "11 °F"),
        weekWeather("Thursday", "8 °F"),
      ],
    ),
  );
}























// Stack(
//   alignment: Alignment.center,
//   children: <Widget>[
//     Icon(Icons.airplay, color: Colors.redAccent, size:  200,),
//     Positioned(
//       top: 60,
//       left: 45,
//       child: Text('TV',
//         style: TextStyle(fontSize: 30, color: Colors.white),),
//     )
//
//   ],
// )






// Row(
//   children: <Widget>[
//     Expanded(
//       flex: 2,
//         child: Image.network(
//             'https://i-fakt.ru/wp-content/uploads/2019/03/fakty-vesna.jpg')),
//     Expanded(
//       flex: 3,
//       child: Container(
//         padding: EdgeInsets.all(30),
//         color: Colors.redAccent,
//         child: Text('1'),
//       ),
//     ),
//     Expanded(
//       flex: 2,
//       child: Container(
//         padding: EdgeInsets.all(30),
//         color: Colors.greenAccent,
//         child: Text('2'),
//       ),
//     ),
//     Expanded(
//       child: Container(
//         padding: EdgeInsets.all(30),
//         color: Colors.blue,
//         child: Text('3'),
//       ),
//     )
//
//   ],
// )




// Container(
//   decoration: BoxDecoration(
//     color: Colors.indigo[100],
//   ),
//   child: Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: <Widget>[
//       Icon(Icons.adjust, size: 50, color: Colors.redAccent,),
//       Icon(Icons.adjust, size: 200, color: Colors.brown,),
//       Icon(Icons.adjust, size: 50, color: Colors.indigo,)
//     ],
//   ),
// )

// Container(
//   decoration: BoxDecoration(
//     color: Colors.amber,
//     border: Border.all(),
//   ),
//     width: 200,
//     height: 100,
//     padding: EdgeInsets.all(16),
//     margin: EdgeInsets.all(30),
//     alignment: Alignment.center,
//     child: Text(
//         'Hello Flutter',
//         style: TextStyle(fontSize: 20, color: Colors.white))),

//       Center(
//           child: Text(
// 'Hello Flutter',
// style: TextStyle(fontSize: 20, color: Colors.white))),

//   Align(
//     alignment: Alignment.center,
//     child: Text(
// 'Hello Flutter',
// style: TextStyle(fontSize: 20, color: Colors.white))),

// Padding(
//   padding: EdgeInsets.all(30),
//   child: Text(
//     'Hello Flutter',
//     style: TextStyle(fontSize: 20, color: Colors.white)) ,)



// class Body extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Text('Hello Flutter',
//       style: TextStyle(
//         color: Colors.redAccent,
//       ));
//   }
// }