import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PageCadastroMotorista extends StatefulWidget {
  PageCadastroMotorista({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PageCadastroMotoristaState createState() => _PageCadastroMotoristaState();
}

Firestore db = Firestore.instance;

Future<DocumentSnapshot> salvar(
    String nome, String email, String cpf, String senha) async {
  await db
      .collection("motorista")
      .add({"nome": nome, "email": email, "cpf": cpf, "senha": senha});
}

class _PageCadastroMotoristaState extends State<PageCadastroMotorista> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  TextEditingController _nomeMotoristaFieldController = TextEditingController();
  TextEditingController _emailMotoristaFieldController =
      TextEditingController();
  TextEditingController _cpfMotoristaFieldController = TextEditingController();
  TextEditingController _senhaMotoristaFieldController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final nomeMotoristaField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Nome do/a Motorista",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      controller: _nomeMotoristaFieldController,
    );

    final emailMotoristaField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      controller: _emailMotoristaFieldController,
    );

    final cpfMotoristaField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "CPF",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      controller: _cpfMotoristaFieldController,
    );

    final passwordMotoristaField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Senha",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      controller: _senhaMotoristaFieldController,
    );

    final confirmButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.amber,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () async {
          await salvar(
            _nomeMotoristaFieldController.text,
            _emailMotoristaFieldController.text,
            _cpfMotoristaFieldController.text,
            _senhaMotoristaFieldController.text,
          );
        },
        child: Text("Confirmar",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    final cancelButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.amber,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text("Cancelar",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 45.0),
                nomeMotoristaField,
                SizedBox(height: 25.0),
                cpfMotoristaField,
                SizedBox(height: 25.0),
                emailMotoristaField,
                SizedBox(height: 25.0),
                passwordMotoristaField,
                SizedBox(
                  height: 35.0,
                ),
                confirmButon,
                SizedBox(
                  height: 15.0,
                ),
                cancelButon,
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
