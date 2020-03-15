import 'package:flutter/material.dart';
import 'package:reto_login/src/pages/HomPages.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: HomePage(),
      )
    );
  }
}