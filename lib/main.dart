import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './gradient-button.dart';
import 'dart:ui';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Stack(children: [
        Column(children: [
          Expanded(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 0, 0, 0),
                  Color.fromARGB(0, 0, 0, 0)
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
              ),
              position: DecorationPosition.foreground,
              child: OverflowBox(
                minWidth: 780,
                maxWidth: 2000,
                child: Image.asset(
                  'assets/mountain.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ]),
        Padding(
          padding: const EdgeInsets.all(26.0),
          child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'CHALET',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'SF Pro Display',
                      fontSize: 75,
                      letterSpacing: 1.25,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Spend more time on the mountain. Chalet brings the best mountains within range by providing affordable lift tickets and accomodations.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 224, 224, 224),
                      fontFamily: 'SF Pro Display',
                      letterSpacing: 0.5,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 80,
                )
              ]),
        ),
        Padding(
          padding: const EdgeInsets.all(26.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Column(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: GradientButton(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Sign in with Twitter ',
                          style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.25,
                              color: Colors.white,
                              fontSize: 18),
                        ),
                        Icon(
                          FontAwesomeIcons.twitter,
                          color: Colors.white,
                        )
                      ],
                    ),
                    fill: LinearGradient(colors: [
                      Color.fromARGB(255, 56, 184, 242),
                      Color.fromARGB(255, 132, 60, 247)
                    ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 16),
                  child: SizedBox(
                    width: double.infinity,
                    child: OutlineButton(
                      color: Color.fromARGB(255, 132, 60, 247),
                      textColor: Color.fromARGB(255, 132, 60, 247),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 132, 60, 247), width: 2),
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            letterSpacing: 1.25,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 130, 130, 130)),
                      ),
                      Text(
                        " Sign up",
                        style:
                            TextStyle(color: Color.fromARGB(255, 132, 60, 247)),
                      )
                    ],
                  ),
                )
              ])
            ],
          ),
        ),
      ]),
    );
  }
}
