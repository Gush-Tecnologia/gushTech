import 'package:mobx/mobx.dart';
part 'loginModel.g.dart';

class LoginModel = _LoginModelBase with _$LoginModel;

abstract class _LoginModelBase with Store {

  @observable
  String email ;
  @action
  mudarEmail(String value) => email = value;


  @observable
  String senha;
  @action
  mudarSenha(String value) => senha = value;


}