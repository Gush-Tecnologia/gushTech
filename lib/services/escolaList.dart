import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class EscolaList extends StatelessWidget {
  EscolaList({this.firestore});

  final Firestore firestore;
  var _category;
  var dropDown;

  @override
  Widget build(BuildContext context) {
    return new StreamBuilder<QuerySnapshot>(
    stream: Firestore.instance.collection('escola').snapshots(),
    builder: (context, snapshot){
      if (!snapshot.hasData) return const Center(
        child: const CupertinoActivityIndicator(),
      );
      var length = snapshot.data.documents.length;
      DocumentSnapshot ds = snapshot.data.documents[length - 1];
      _category= snapshot.data.documents;
      return new Container(
        padding: EdgeInsets.only(bottom: 16.0),
        child: new Row(
          children: <Widget>[
            new Expanded(
                flex: 2,
                child: new Container(
                  padding: EdgeInsets.fromLTRB(12.0,10.0,10.0,10.0),
                  child: new Text("Escola",),
                )
            ),
            new Expanded(
              flex: 4,
              child:new InputDecorator(
                decoration: const InputDecoration(
                  //labelText: 'Activity',
                  hintText: 'Escolha uma escola',
                  hintStyle: TextStyle(
                    fontSize: 16.0,
                    fontFamily: "OpenSans",
                    fontWeight: FontWeight.normal,
                  ),
                ),
                isEmpty: _category == null,
                child: new DropdownButton(
                  value: _category,
                  isDense: true,
                  items: snapshot.data.documents.map((DocumentSnapshot document) {
                    return new DropdownMenuItem<String>(
                        value: document.data['nome'],
                        child: new Container(
                          decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(5.0)
                          ),
                          height: 100.0,
                          padding: EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 0.0),
                          //color: primaryColor,
                          child: new Text(document.data['nome']),
                        )
                    );
                  }).toList(), 
                  onChanged: (value) {
                    
                      _category = value;
                      dropDown = false;
                    
                    },
                ),
              ),
            ),
          ],
        ),
      );
    }
);
      }
}