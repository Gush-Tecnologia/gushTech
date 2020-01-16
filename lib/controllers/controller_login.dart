import 'package:mobx/mobx.dart';
import 'package:redi_app/models/loginModel.dart';
part 'controller_login.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {

  var loginModel = LoginModel();
  
  
  @action
  mudarEmail(String value) => loginModel.mudarEmail(value);
  @action
  mudarSenha(String value) => loginModel.mudarSenha(value);

  
  String validaEmail() {
    if (loginModel.email == null || loginModel.email.isEmpty) {
      return "Este campo é obrigatório";
    } else if (!loginModel.email.contains("@")) {
      return "Insira um email válido";
    }
    return null;
  }

  String validaSenha(){

    if(loginModel.senha == null || loginModel.senha.isEmpty){
      return "Este campo é obrigatório";
    }else if (loginModel.senha.length < 5) {
      return "Insira uma senha com no minimo 6 digitos";
    }
    return null;
  }
  dispose(){}
}