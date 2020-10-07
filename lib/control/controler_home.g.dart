// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controler_home.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ControlerHome on _ControlerHomeBase, Store {
  final _$listBotijaoAtom = Atom(name: '_ControlerHomeBase.listBotijao');

  @override
  ObservableStream<List<Farm>> get listBotijao {
    _$listBotijaoAtom.reportRead();
    return super.listBotijao;
  }

  @override
  set listBotijao(ObservableStream<List<Farm>> value) {
    _$listBotijaoAtom.reportWrite(value, super.listBotijao, () {
      super.listBotijao = value;
    });
  }

  final _$_ControlerHomeBaseActionController =
      ActionController(name: '_ControlerHomeBase');

  @override
  dynamic getList() {
    final _$actionInfo = _$_ControlerHomeBaseActionController.startAction(
        name: '_ControlerHomeBase.getList');
    try {
      return super.getList();
    } finally {
      _$_ControlerHomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listBotijao: ${listBotijao}
    ''';
  }
}
