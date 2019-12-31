import 'package:flutter/material.dart';

class PageCadastroRota extends StatefulWidget {
  PageCadastroRota({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PageCadastroRotaState createState() => _PageCadastroRotaState();
}

class _PageCadastroRotaState extends State<PageCadastroRota> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  List<DropdownMenuItem<int>> listaEscolas = [];
  List<DropdownMenuItem<int>> listaAlunos = [];
  List<DropdownMenuItem<int>> listaVeiculos = [];
  List<DropdownMenuItem<int>> listaMotoristas = [];

  void loadData() {
    listaAlunos.add(new DropdownMenuItem(
      child: new Text('Luizinho'),
      value: 1,
    ));
    listaAlunos.add(new DropdownMenuItem(
      child: new Text('Huguinho'),
      value: 2,
    ));
    listaAlunos.add(new DropdownMenuItem(
      child: new Text('Zezinho'),
      value: 3,
    ));
    listaEscolas.add(new DropdownMenuItem(
      child: new Text('Instituto Educacional'),
      value: 1,
    ));
    listaEscolas.add(new DropdownMenuItem(
      child: new Text('Escola das Nossa Sra. das Neves'),
      value: 2,
    ));
    listaEscolas.add(new DropdownMenuItem(
      child: new Text('Faculdades Integradas'),
      value: 3,
    ));
    listaMotoristas.add(new DropdownMenuItem(
      child: new Text('Luiz'),
      value: 1,
    ));
    listaMotoristas.add(new DropdownMenuItem(
      child: new Text('Hugo'),
      value: 2,
    ));
    listaMotoristas.add(new DropdownMenuItem(
      child: new Text('Ze'),
      value: 3,
    ));

    listaVeiculos.add(new DropdownMenuItem(
      child: new Text('Possante 1'),
      value: 1,
    ));
    listaVeiculos.add(new DropdownMenuItem(
      child: new Text('Possante 2'),
      value: 2,
    ));
    listaVeiculos.add(new DropdownMenuItem(
      child: new Text('Possante 3'),
      value: 3,
    ));
  }

  Widget build(BuildContext context) {
    final nomeRotaField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Nome da Rota",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final municioField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Município",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final origemField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Origem",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final destinoField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Destino",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final escolasAtendidasField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Escolas Atendidas",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final dataField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Data",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final turnoField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Turno",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final motoristaField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Motorista",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final veiculoField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Veículo",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final numeroDaRotaField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Número da Rota",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final pontosDaRotaField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Pontos GPS",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final descricaoField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Descrição",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final localidadeField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Localidade",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final quantidadeDeAlunosField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Quant.  de Alunos",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final tipoDeEstradaField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Tipo de Estrada",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final observcoesField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Observações",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final alunoButon = DropdownButton(
      items: listaAlunos,
      onChanged: null,
    );
    final escolaButon = DropdownButton(
      items: listaEscolas,
      onChanged: null,
    );
    final mostoristaButon = DropdownButton(
      items: listaMotoristas,
      onChanged: null,
    );
    final veiculoButon = DropdownButton(
      items: listaVeiculos,
      onChanged: null,
    );

    final confirmButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.amber,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
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
                nomeRotaField,
                espaco0,
                municioField,
                espaco0,
                origemField,
                espaco0,
                destinoField,
                espaco0,
                escolaButon,
                espaco0,
                dataField,
                espaco0,
                turnoField,
                espaco0,
                mostoristaButon,
                espaco0,
                veiculoButon,
                espaco0,
                numeroDaRotaField,
                espaco0,
                pontosDaRotaField,
                espaco0,
                descricaoField,
                espaco0,
                localidadeField,
                espaco0,
                alunoButon,
                espaco0,
                tipoDeEstradaField,
                espaco0,
                observcoesField,
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
