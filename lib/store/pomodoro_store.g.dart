// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PomodoroStore on _PomodoroStore, Store {
  late final _$iniciadoAtom =
      Atom(name: '_PomodoroStore.iniciado', context: context);

  @override
  bool get iniciado {
    _$iniciadoAtom.reportRead();
    return super.iniciado;
  }

  @override
  set iniciado(bool value) {
    _$iniciadoAtom.reportWrite(value, super.iniciado, () {
      super.iniciado = value;
    });
  }

  late final _$minutosAtom =
      Atom(name: '_PomodoroStore.minutos', context: context);

  @override
  int get minutos {
    _$minutosAtom.reportRead();
    return super.minutos;
  }

  @override
  set minutos(int value) {
    _$minutosAtom.reportWrite(value, super.minutos, () {
      super.minutos = value;
    });
  }

  late final _$segundosAtom =
      Atom(name: '_PomodoroStore.segundos', context: context);

  @override
  int get segundos {
    _$segundosAtom.reportRead();
    return super.segundos;
  }

  @override
  set segundos(int value) {
    _$segundosAtom.reportWrite(value, super.segundos, () {
      super.segundos = value;
    });
  }

  late final _$_workTimeAtom =
      Atom(name: '_PomodoroStore._workTime', context: context);

  @override
  int get _workTime {
    _$_workTimeAtom.reportRead();
    return super._workTime;
  }

  @override
  set _workTime(int value) {
    _$_workTimeAtom.reportWrite(value, super._workTime, () {
      super._workTime = value;
    });
  }

  late final _$_breakTimeAtom =
      Atom(name: '_PomodoroStore._breakTime', context: context);

  @override
  int get _breakTime {
    _$_breakTimeAtom.reportRead();
    return super._breakTime;
  }

  @override
  set _breakTime(int value) {
    _$_breakTimeAtom.reportWrite(value, super._breakTime, () {
      super._breakTime = value;
    });
  }

  late final _$_tipoIntervaloAtom =
      Atom(name: '_PomodoroStore._tipoIntervalo', context: context);

  @override
  TipoIntervalo get _tipoIntervalo {
    _$_tipoIntervaloAtom.reportRead();
    return super._tipoIntervalo;
  }

  @override
  set _tipoIntervalo(TipoIntervalo value) {
    _$_tipoIntervaloAtom.reportWrite(value, super._tipoIntervalo, () {
      super._tipoIntervalo = value;
    });
  }

  late final _$_PomodoroStoreActionController =
      ActionController(name: '_PomodoroStore', context: context);

  @override
  void iniciar() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.iniciar');
    try {
      return super.iniciar();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void parar() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.parar');
    try {
      return super.parar();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetar() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.resetar');
    try {
      return super.resetar();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void increaseTimeWorking() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.increaseTimeWorking');
    try {
      return super.increaseTimeWorking();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementTimeWorking() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.decrementTimeWorking');
    try {
      return super.decrementTimeWorking();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void increaseTimeBreak() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.increaseTimeBreak');
    try {
      return super.increaseTimeBreak();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementTimeBreak() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.decrementTimeBreak');
    try {
      return super.decrementTimeBreak();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
iniciado: ${iniciado},
minutos: ${minutos},
segundos: ${segundos}
    ''';
  }
}
