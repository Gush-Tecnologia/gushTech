
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:redi_app/controllers/controller_login.dart';
import 'package:redi_app/views/home_page.dart';

class LoginBody extends StatelessWidget {
  
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  _textFild ({String labelText,onChanged,String Function() erroText}){

    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        //contentPadding: EdgeInsets.fromLTRB(22, 16, 32, 16),
        labelText: labelText,
        errorText: erroText == null ? null : erroText(),
      ),
    );
  }

  _materialButton({String labelText, onPressed, String Function() errorText}) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.amber,
      child: MaterialButton(
        //minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(60, 15.0, 60, 15.0),
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

    final controller = Provider.of<LoginController>(context);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Observer(
              builder: (_){
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 150),
                  child: Image.asset('assets/gush_icon.png'),
                  
                );
              },
            ),
            SizedBox(height: 25,),
            Observer(
              builder: (_){
                return _textFild(
                  onChanged: controller.mudarEmail,
                  labelText: "Email",
                  erroText: controller.validaEmail
                );
              },
            ),
            SizedBox(height: 25,),
            Observer(
              builder: (_){
                return _textFild(
                  onChanged: controller.mudarSenha,
                  labelText: "Senha",
                  erroText: controller.validaSenha
                );
              },
            ),
            SizedBox(height: 40,),
            Observer(
              builder: (_){
                return _materialButton(
                  labelText: "Login",
                  onPressed: (){
                    Navigator.push(
                      _,
                      MaterialPageRoute(
                        builder: (_) => HomePage(),
                      )
                    );
                  }
                );
              },
            )
          ],
        ),
      ),
    );
  }
}