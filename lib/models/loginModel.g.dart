// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loginModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginModel on _LoginModelBase, Store {
  final _$emailAtom = Atom(name: '_LoginModelBase.email');

  @override
  String get email {
    _$emailAtom.context.enforceReadPolicy(_$emailAtom);
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.conditionallyRunInAction(() {
      super.email = value;
      _$emailAtom.reportChanged();
    }, _$emailAtom, name: '${_$emailAtom.name}_set');
  }

  final _$senhaAtom = Atom(name: '_LoginModelBase.senha');

  @override
  String get senha {
    _$senhaAtom.context.enforceReadPolicy(_$senhaAtom);
    _$senhaAtom.reportObserved();
    return super.senha;
  }

  @override
  set senha(String value) {
    _$senhaAtom.context.conditionallyRunInAction(() {
      super.senha = value;
      _$senhaAtom.reportChanged();
    }, _$senhaAtom, name: '${_$senhaAtom.name}_set');
  }

  final _$_LoginModelBaseActionController =
      ActionController(name: '_LoginModelBase');

  @override
  dynamic mudarEmail(String value) {
    final _$actionInfo = _$_LoginModelBaseActionController.startAction();
    try {
      return super.mudarEmail(value);
    } finally {
      _$_LoginModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic mudarSenha(String value) {
    final _$actionInfo = _$_LoginModelBaseActionController.startAction();
    try {
      return super.mudarSenha(value);
    } finally {
      _$_LoginModelBaseActionController.endAction(_$actionInfo);
    }
  }
}
