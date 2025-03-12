import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

class Painelpassageiro extends StatefulWidget {
  @override
  _PainelpassageiroState createState() => _PainelpassageiroState();
}

class _PainelpassageiroState extends State<Painelpassageiro> {
  List<String> itensMenu = ["Configurações", "Deslogar"];

  Completer<GoogleMapController> _controller = Completer();

  _deslogarUsuario() async {
    FirebaseAuth auth = FirebaseAuth.instance;

    await auth.signOut();
    Navigator.pushReplacementNamed(context, "/");
  }

  _escolhaMenuItem(String escolha) {
    switch (escolha) {
      case "Deslogar":
        _deslogarUsuario();
        break;
      case "Configurações":
        break;
    }
  }

  _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Painel passageiro"),
        backgroundColor: Color(0xff37474f),
        foregroundColor: Colors.white,
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: _escolhaMenuItem,
            itemBuilder: (context) {
              return itensMenu.map((String item) {
                return PopupMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList();
            },
          )
        ],
      ),
      body: Container(
        child: GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: CameraPosition(
            target: LatLng(-23.678587548826087, -46.78275369894325),
            zoom: 16,
          ),
          onMapCreated: _onMapCreated,
        ),
      ),
    );
  }
}
