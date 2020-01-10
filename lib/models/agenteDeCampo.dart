class AgenteDeCampo {

  final String cpf ;
  final String nome;
  final String email ;
  final String senha;

  AgenteDeCampo({this.cpf,this.nome,this.email,this.senha});
  factory AgenteDeCampo.fromjson(Map json){
    return AgenteDeCampo(
      cpf: json['cpf'],
      nome: json['nome'],
      email:  json['email'],
      senha:  json['senha']
       );
  }
}