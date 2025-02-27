import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  TextEditingController _controllerNome = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  bool _tipoUsuarioPassageiro = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro", style: TextStyle(fontSize: 21)),
        backgroundColor: Theme.of(context).colorScheme.primary,
        titleTextStyle: TextStyle(color: Colors.white),  
        iconTheme: IconThemeData(color: Colors.white), 
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextField(
                  controller: _controllerNome,
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                      hintText: "Nome completo",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6))),
                ),
                TextField(
                  controller: _controllerEmail,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                      hintText: "e-mail",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6))),
                ),
                TextField(
                  controller: _controllerSenha,
                  obscureText: true,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                      hintText: "senha",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6))),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 18),
                  child: Row(
                    children: <Widget>[
                      Text("Passageiro", style: TextStyle(fontSize: 18)),
                      Switch(
                        value: _tipoUsuarioPassageiro,
                        onChanged: (bool valor) {
                          setState(() {
                            _tipoUsuarioPassageiro = valor;
                          });
                        },
                        activeColor: Color(0xff546e7a),
                        inactiveThumbColor: Color(0xff37474f)
                      ),
                      Text("Motorista", style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff546e7a),
                      padding: EdgeInsets.fromLTRB(
                          32, 16, 32, 16), 
                    ),
                    child: Text(
                      "Cadastra",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Center(
                    child: Text(
                      "Error",
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
