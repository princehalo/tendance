import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(Tendance(
    initialRoute: '/splashScreen',
    routes: {
      '/splashScreen': (context) => SplashScreen(),
    }
  ));
}

class Tendance extends StatefulWidget {
  const Tendance({Key? key}) : super(key: key);

  @override
  _TendanceState createState() => _TendanceState();
}


class _TendanceState extends State<Tendance> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tendance',
      home: Scaffold(
        appBar: AppBar(
          title: Text('CCT Tendance'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello New Github Repo!'),
          ),
        ),
      ),
    );
  }
}

