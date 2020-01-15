import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../controller_facade.dart';

class PageCadastroAgenteDeCampo extends StatefulWidget {
  PageCadastroAgenteDeCampo({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _PageCadastroAgenteDeCampoState createState() =>
      _PageCadastroAgenteDeCampoState();
}

class _PageCadastroAgenteDeCampoState extends State<PageCadastroAgenteDeCampo> {
  Firestore db = Firestore.instance;
  Future<DocumentSnapshot> _salvar(
      String nome, String email, String cpf, String senha) async {
    await db
        .collection("agenteDeCampo")
        .add({"nome": nome, "email": email, "cpf": cpf, "senha": senha});
  }

  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  Future<DocumentSnapshot> _listaAgentes() async {
    StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('agenteDeCampo').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) return new Text('Error: ${snapshot.error}');
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return new Text('Loading...');
          default:
            return new ListView(
              children:
                  snapshot.data.documents.map((DocumentSnapshot document) {
                return new ListTile(
                  title: new Text(document['nome']),
                  subtitle: new Text(document['email']),
                );
              }).toList(),
            );
        }
      },
    );
  }

  _textField(
      {String labelText, hintText, onChanged, String Function() errorText}) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: hintText,
        labelText: labelText,
        errorText: errorText == null ? null : errorText(),
      ),
    );
  }

  _materialButton({String labelText, onPressed, String Function() errorText}) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.amber,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: onPressed,
        child: Text(labelText,
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller>(context);
    final espaco = SizedBox(height: 15.0);
    final espaco0 = SizedBox(height: 25.0);
    final espaco1 = SizedBox(height: 35.0);
    
    

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
                Observer(
                  builder: (_) {
                    return _textField(
                        errorText: controller.agenteDeCampo.validaNome,
                        labelText: "Nome",
                        hintText: "Nome do Agente de Campo",
                        onChanged:
                            controller.agenteDeCampo.agenteDeCampo.mudarNome);
                  },
                ),
                espaco0,
                Observer(
                  builder: (_) {
                    return _textField(
                        errorText: controller.agenteDeCampo.validaCpf,
                        labelText: "CPF",
                        hintText: "CPF do Agente de Campo",
                        onChanged:
                            controller.agenteDeCampo.agenteDeCampo.mudarCpf);
                  },
                ),
                espaco0,
                Observer(
                  builder: (_) {
                    return _textField(
                        errorText: controller.agenteDeCampo.validaEmail,
                        labelText: "Email",
                        hintText: "Email do Agente de Campo",
                        onChanged:
                            controller.agenteDeCampo.agenteDeCampo.mudarEmail);
                  },
                ),
                espaco0,
                Observer(
                  builder: (_) {
                    return _textField(
                        errorText: controller.agenteDeCampo.validaNome,
                        labelText: "Senha",
                        hintText: "Senha do Agente de Campo",
                        onChanged:
                            controller.agenteDeCampo.agenteDeCampo.mudarSenha);
                  },
                ),
                espaco1,
                Observer(
                  builder: (_) {
                    return _materialButton(
                      labelText: "Confimar",
                      onPressed: controller.agenteDeCampo.isValidAgenteDeCampo
                          ? () async {
                              await _salvar(
                                  controller.agenteDeCampo.nome,
                                  controller.agenteDeCampo.email,
                                  controller.agenteDeCampo.cpf,
                                  controller.agenteDeCampo.senha);
                            }
                          : null,
                    );
                  },
                ),
                espaco,
                Observer(
                  builder: (_) {
                    return _materialButton(
                      labelText: "Lista",
                      onPressed: controller.agenteDeCampo.isValidAgenteDeCampo
                          ? () async {
                              await _listaAgentes();
                            }
                          : null,
                    );
                  },
                ),
                espaco,
                Observer(
                  builder: (_) {
                    return _materialButton(
                      labelText: "Cancelar",
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    );
                  },
                ),
                espaco,
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
