import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PageCadastroFiscalDeCampo extends StatefulWidget {
  PageCadastroFiscalDeCampo({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PageCadastroFiscalDeCampoState createState() =>
      _PageCadastroFiscalDeCampoState();
}

Firestore db = Firestore.instance;

Future<DocumentSnapshot> salvar(
    String modelo, String ano, String placa, String chassis) async {
  await db
      .collection("fiscalDeCampo")
      .add({"modelo": modelo, "ano": ano, "placa": placa, "chassis": chassis});
}

class _PageCadastroFiscalDeCampoState extends State<PageCadastroFiscalDeCampo> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  TextEditingController _nomeFiscalDeCampoFieldController =
      TextEditingController();
  TextEditingController _emailFiscalDeCampoFieldController =
      TextEditingController();
  TextEditingController _cpfFiscalDecampoFieldController =
      TextEditingController();
  TextEditingController _snehaFiscalDecampoFieldController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final nomeAgenteDeCampoField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Nome do Fiscal de Campo",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      controller: _nomeFiscalDeCampoFieldController,
    );

    final emailField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      controller: _emailFiscalDeCampoFieldController,
    );

    final cpfField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "CPF",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      controller: _cpfFiscalDecampoFieldController,
    );

    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Senha",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      controller: _snehaFiscalDecampoFieldController,
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
            _nomeFiscalDeCampoFieldController.text,
            _emailFiscalDeCampoFieldController.text,
            _cpfFiscalDecampoFieldController.text,
            _snehaFiscalDecampoFieldController.text,
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
                nomeAgenteDeCampoField,
                SizedBox(height: 25.0),
                cpfField,
                SizedBox(height: 25.0),
                emailField,
                SizedBox(height: 25.0),
                passwordField,
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
