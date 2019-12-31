import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PageCadastroAgenteDeCampo extends StatefulWidget {
  PageCadastroAgenteDeCampo({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _PageCadastroAgenteDeCampoState createState() =>
      _PageCadastroAgenteDeCampoState();
}

Firestore db = Firestore.instance;

Future<DocumentSnapshot> salvar(
    String nome, String email, String cpf, String senha) async {
  await db
      .collection("agenteDeCampo")
      .add({"nome": nome, "email": email, "cpf": cpf, "senha": senha});
}

class _PageCadastroAgenteDeCampoState extends State<PageCadastroAgenteDeCampo> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  TextEditingController _nomeAgenteDeCampoFieldController =
      TextEditingController();
  TextEditingController _emailFieldController = TextEditingController();
  TextEditingController _cpfFieldController = TextEditingController();
  TextEditingController _passwordFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final nomeAgenteDeCampoField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Nome do Agente de Campo",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      controller: _nomeAgenteDeCampoFieldController,
    );

    final emailField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      controller: _emailFieldController,
    );

    final cpfField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "CPF",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      controller: _cpfFieldController,
    );

    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Senha",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      controller: _passwordFieldController,
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
            _nomeAgenteDeCampoFieldController.text,
            _emailFieldController.text,
            _cpfFieldController.text,
            _passwordFieldController.text,
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
    final espaco2 = SizedBox(height: 45.0);
    final espaco1 = SizedBox(height: 35.0);
    final espaco0 = SizedBox(height: 25.0);
    final espaco = SizedBox(height: 15.0);

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
                espaco2,
                nomeAgenteDeCampoField,
                espaco0,
                cpfField,
                espaco0,
                emailField,
                espaco0,
                passwordField,
                espaco1,
                confirmButon,
                espaco,
                cancelButon,
                espaco,
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
