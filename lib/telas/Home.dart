import 'package:flutter/material.dart';
import 'package:uber/telas/cadastro.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

   TextEditingController _controllerEmail = TextEditingController();
   TextEditingController _controllerSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("imagens/fundo1.jpeg"),
            fit: BoxFit.cover
          )
        ),
        padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(bottom: 32),
                child: Image.asset(
                    "imagens/logo1.png",
                  width: 700,
                  height: 300,
                  ),
                ),
                TextField(
                  controller: _controllerEmail,
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                    hintText: "e-mail",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6)
                    ) 
                  ),
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
                      borderRadius: BorderRadius.circular(6)
                    ) 
                  ),
                ),
                Padding(
                padding: EdgeInsets.only(top: 16, bottom: 10),
                child: ElevatedButton(
                  onPressed: () {}, 
                  style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff1ebbd8),
                padding: EdgeInsets.fromLTRB(32, 16, 32, 16), // Cor do botão corrigida
                ),
                child: Text(
                "Entrar",
                style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                ),
               ),
               Center(
                child: GestureDetector(
                  child: Text(
                    "Não tem conta? cadastre-se!",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => Cadastro()
                      )
                    );
                  },
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
