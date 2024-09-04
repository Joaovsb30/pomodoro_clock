import 'dart:async';

import 'package:mobx/mobx.dart';

part 'pomodoro_store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

enum TipoIntervalo { trabalho, pausa }

abstract class _PomodoroStore with Store {
  get workTime => _workTime;
  get breakTime => _breakTime;

  @observable
  bool iniciado = false;

  @observable
  int minutos = 0;

  @observable
  int segundos = 0;

  @observable
  int _workTime = 25;

  @observable
  int _breakTime = 5;

  @observable
  TipoIntervalo _tipoIntervalo = TipoIntervalo.pausa;

  Timer? cronometro;

  @action
  void iniciar() {
    iniciado = true;
    cronometro = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (minutos == 0 && segundos == 0) {
          _trocarTipoIntervalo();
        } else if (segundos == 0) {
          segundos = 59;
          minutos--;
        } else {
          segundos--;
        }
      },
    );
  }

  @action
  void parar() {
    iniciado = false;
    cronometro?.cancel();
  }

  @action
  void resetar() {
    parar();
    iniciado = false;
    minutos = estaTrabalhando() ? _workTime : _breakTime;
    segundos = 0;
    _tipoIntervalo = TipoIntervalo.trabalho;
  }

  @action
  void increaseTimeWorking() {
    _workTime++;
    if (estaTrabalhando()) {
      resetar();
    }
  }

  @action
  void decrementTimeWorking() {
    if (_workTime > 0) {
      _workTime--;
      if (estaTrabalhando()) {
        resetar();
      }
    } else {
      return;
    }
  }

  @action
  void increaseTimeBreak() {
    _breakTime++;
    if (estaDescansando()) {
      resetar();
    }
  }

  @action
  void decrementTimeBreak() {
    if (_breakTime > 0) {
      _breakTime--;
      if (estaDescansando()) {
        resetar();
      }
    } else {
      return;
    }
  }

  bool estaTrabalhando() {
    return _tipoIntervalo == TipoIntervalo.trabalho;
  }

  bool estaDescansando() {
    return _tipoIntervalo == TipoIntervalo.pausa;
  }

  void _trocarTipoIntervalo() {
    if (estaTrabalhando()) {
      _tipoIntervalo = TipoIntervalo.pausa;
      minutos = _breakTime;
    } else {
      _tipoIntervalo = TipoIntervalo.trabalho;
      minutos = _workTime;
    }
    segundos = 0;
  }
}
