// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agenteDeCampo.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AgenteDeCampo on _AgenteDeCampoBase, Store {
  final _$cpfAtom = Atom(name: '_AgenteDeCampoBase.cpf');

  @override
  String get cpf {
    _$cpfAtom.context.enforceReadPolicy(_$cpfAtom);
    _$cpfAtom.reportObserved();
    return super.cpf;
  }

  @override
  set cpf(String value) {
    _$cpfAtom.context.conditionallyRunInAction(() {
      super.cpf = value;
      _$cpfAtom.reportChanged();
    }, _$cpfAtom, name: '${_$cpfAtom.name}_set');
  }

  final _$nomeAtom = Atom(name: '_AgenteDeCampoBase.nome');

  @override
  String get nome {
    _$nomeAtom.context.enforceReadPolicy(_$nomeAtom);
    _$nomeAtom.reportObserved();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.context.conditionallyRunInAction(() {
      super.nome = value;
      _$nomeAtom.reportChanged();
    }, _$nomeAtom, name: '${_$nomeAtom.name}_set');
  }

  final _$emailAtom = Atom(name: '_AgenteDeCampoBase.email');

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

  final _$senhaAtom = Atom(name: '_AgenteDeCampoBase.senha');

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

  final _$_AgenteDeCampoBaseActionController =
      ActionController(name: '_AgenteDeCampoBase');

  @override
  dynamic mudarCpf(String value) {
    final _$actionInfo = _$_AgenteDeCampoBaseActionController.startAction();
    try {
      return super.mudarCpf(value);
    } finally {
      _$_AgenteDeCampoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic mudarNome(String value) {
    final _$actionInfo = _$_AgenteDeCampoBaseActionController.startAction();
    try {
      return super.mudarNome(value);
    } finally {
      _$_AgenteDeCampoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic mudarEmail(String value) {
    final _$actionInfo = _$_AgenteDeCampoBaseActionController.startAction();
    try {
      return super.mudarEmail(value);
    } finally {
      _$_AgenteDeCampoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic mudarSenha(String value) {
    final _$actionInfo = _$_AgenteDeCampoBaseActionController.startAction();
    try {
      return super.mudarSenha(value);
    } finally {
      _$_AgenteDeCampoBaseActionController.endAction(_$actionInfo);
    }
  }
}
