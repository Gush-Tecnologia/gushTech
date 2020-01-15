import 'package:mobx/mobx.dart';
import 'package:redi_app/controllers/controller_agente_de_campo.dart';

import 'models/user.dart';
part 'controller_facade.g.dart';

class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  var agenteDeCampo = AgenteDeCampoController();
  var user = User();

  

  @computed
  get isValidUser {
    return validaNomeUser() == null && validaEmailUser() == null;
  }

  

  String validaNomeUser() {
    if (user.password == null || user.password.isEmpty) {
      return "Este campo é obrigatório";
    } else if (user.password.length < 3) {
      return "Insira mais letras";
    }
    return null;
  }

  String validaEmailUser() {
    if (user.email == null || user.email.isEmpty) {
      return "Este campo é obrigatório";
    } else if (!user.email.contains("@")) {
      return "Insira um email válido";
    }
    return null;
  }

  displose() {}
}
