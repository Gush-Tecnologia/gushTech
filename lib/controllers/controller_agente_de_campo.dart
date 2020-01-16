import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobx/mobx.dart';
import 'package:redi_app/models/agenteDeCampo.dart';
part 'controller_agente_de_campo.g.dart';

class AgenteDeCampoController = _AgenteDeCampoControllerBase
    with _$AgenteDeCampoController;

abstract class _AgenteDeCampoControllerBase with Store {
  var agenteDeCampo = AgenteDeCampo();

  Firestore db = Firestore.instance;

  @computed
  get isValidAgenteDeCampo {
    return validaNome() == null && validaEmail() == null;
  }

  @action
  mudarNome(String value) => agenteDeCampo.mudarNome(value);
  @action
  mudarCpf(String value) => agenteDeCampo.mudarCpf(value);
  @action
  mudarEmail(String value) => agenteDeCampo.mudarEmail(value);
  @action
  mudarSenha(String value) => agenteDeCampo.mudarSenha(value);

  String validaNome() {
    if (agenteDeCampo.nome == null || agenteDeCampo.nome.isEmpty) {
      return "Este campo é obrigatório";
    } else if (agenteDeCampo.nome.length < 3) {
      return "Insira mais letras";
    }
    return null;
  }

  String validaEmail() {
    if (agenteDeCampo.email == null || agenteDeCampo.email.isEmpty) {
      return "Este campo é obrigatório";
    } else if (!agenteDeCampo.email.contains("@")) {
      return "Insira um email válido";
    }
    return null;
  }

  String validaCpf() {
    if (agenteDeCampo.cpf == null || agenteDeCampo.cpf.isEmpty) {
      return "Este campo é obrigatório";
    } else if (!(agenteDeCampo.cpf.contains("1") ||
        agenteDeCampo.cpf.contains("2") ||
        agenteDeCampo.cpf.contains("3") ||
        agenteDeCampo.cpf.contains("4") ||
        agenteDeCampo.cpf.contains("5") ||
        agenteDeCampo.cpf.contains("6") ||
        agenteDeCampo.cpf.contains("7") ||
        agenteDeCampo.cpf.contains("8") ||
        agenteDeCampo.cpf.contains("9") ||
        agenteDeCampo.cpf.contains("0"))) {
      return "Insira um CPF válido";
    }
    return null;
  }
  dispose(){}
}
