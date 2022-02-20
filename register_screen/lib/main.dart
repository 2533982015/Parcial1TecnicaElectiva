import 'package:flutter/material.dart';
import 'package:register_screen/pages/register_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Parcial 1 - pantalla de registro',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(title: Text('Parcial 1 - pantalla de registro')),
          body: Container(color: Colors.white, child: ResgisterPage()),
        ));
  }
}
