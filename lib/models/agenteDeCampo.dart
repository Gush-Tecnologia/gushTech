import 'package:mobx/mobx.dart';
part 'agenteDeCampo.g.dart';

class AgenteDeCampo = _AgenteDeCampoBase with _$AgenteDeCampo;

abstract class _AgenteDeCampoBase with Store {
  @observable
   String cpf ;
  @action
  mudarCpf(String value) => cpf = value;

  @observable
  String nome;
  @action
  mudarNome(String value) => nome = value;


  @observable
  String email ;
  @action
  mudarEmail(String value) => email = value;


  @observable
  String senha;
  @action
  mudarSenha(String value) => senha = value;




}