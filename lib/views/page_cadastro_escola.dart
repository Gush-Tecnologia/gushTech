import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PageCadastroEscola extends StatefulWidget {
  PageCadastroEscola({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PageCadastroEscolaState createState() => _PageCadastroEscolaState();
}

Firestore db = Firestore.instance;

Future<DocumentSnapshot> salvar(
    String nome, String endereco, String ponto) async {
  await db
      .collection("escola")
      .add({"nome": nome, "endereco": endereco, "ponto": ponto});
}

class _PageCadastroEscolaState extends State<PageCadastroEscola> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  TextEditingController _nomeInstituicaoFieldController =
      TextEditingController();
  TextEditingController _enderacoInstituicaoFieldController =
      TextEditingController();
  TextEditingController _pontoinstituicaoFieldController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final nomeEscolaField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Nome da Instituição",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      controller: _nomeInstituicaoFieldController,
    );

    final enderecoEscolaField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Endereço",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      controller: _enderacoInstituicaoFieldController,
    );

    final pontoEscolaField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Ponto GPS",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      controller: _pontoinstituicaoFieldController,
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
            _nomeInstituicaoFieldController.text,
            _enderacoInstituicaoFieldController.text,
            _pontoinstituicaoFieldController.text,
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
                nomeEscolaField,
                SizedBox(height: 25.0),
                enderecoEscolaField,
                SizedBox(height: 25.0),
                pontoEscolaField,
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
