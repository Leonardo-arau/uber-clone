import 'package:flutter/material.dart';
import 'package:uber/telas/home.dart';

final ThemeData temaPadrao = ThemeData(
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: Color(0xff37474f),
    secondary: Color(0xff546e7a),
  ),
);

void main() => runApp(MaterialApp(
      title: "Uber",
      home: Home(),
      theme: temaPadrao,
      debugShowCheckedModeBanner: false,
    ));
