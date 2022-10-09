import 'package:flutter/material.dart';
import 'package:new_planet/screen/detail_page.dart';
import 'package:new_planet/screen/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        'page': (context) => PageD(),
      },
    ),
  );
}
