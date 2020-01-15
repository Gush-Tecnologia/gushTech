import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PageCadastroVeiculo extends StatefulWidget {
  PageCadastroVeiculo({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PageCadastroVeiculoState createState() => _PageCadastroVeiculoState();
}

Firestore db = Firestore.instance;

Future<DocumentSnapshot> salvar(
    String modelo, String ano, String placa, String chassis) async {
  await db
      .collection("veiculo")
      .add({"modelo": modelo, "ano": ano, "placa": placa, "chassis": chassis});
}

class _PageCadastroVeiculoState extends State<PageCadastroVeiculo> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  TextEditingController _modeloVeiculoFieldController = TextEditingController();
  TextEditingController _anoVeiculoFieldController = TextEditingController();
  TextEditingController _placaVeiculoFieldController = TextEditingController();

  TextEditingController _chassisVeiculoFieldController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final modeloVeiculoField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Modelo do Veículo",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      controller: _modeloVeiculoFieldController,
    );

    final anoVeiculoField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Ano",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      controller: _anoVeiculoFieldController,
    );

    final placaVeiculoField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Placa",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      controller: _placaVeiculoFieldController,
    );

    final chassisVeiculoField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Chassis",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      controller: _chassisVeiculoFieldController,
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
            _modeloVeiculoFieldController.text,
            _anoVeiculoFieldController.text,
            _placaVeiculoFieldController.text,
            _chassisVeiculoFieldController.text,
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
                modeloVeiculoField,
                SizedBox(height: 25.0),
                anoVeiculoField,
                SizedBox(height: 25.0),
                placaVeiculoField,
                SizedBox(height: 25.0),
                chassisVeiculoField,
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
