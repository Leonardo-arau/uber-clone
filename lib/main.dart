import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:uber/rotas.dart';
import 'package:uber/telas/home.dart';

final ThemeData temaPadrao = ThemeData(
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: Color(0xff37474f),
    secondary: Color(0xff546e7a),
  ),
);

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Garante a inicialização dos plugins
  await Firebase.initializeApp(); // Inicializa o Firebase antes de rodar o app

  runApp(MaterialApp(
    title: "Uber",
    home: Home(),
    theme: temaPadrao,
    initialRoute: "/",
    onGenerateRoute: Rotas.gerarRotas,
    debugShowCheckedModeBanner: false,
  ));
}
