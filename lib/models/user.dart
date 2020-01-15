import 'package:mobx/mobx.dart';
part 'user.g.dart';

class User = _UserBase with _$User;

abstract class _UserBase with Store {
  @observable
  String email;

  @action
  mudarEmail(String value) => email = value;

  @observable
  String password;

  @action
  mudarPassword(String value) => password = value;
}
