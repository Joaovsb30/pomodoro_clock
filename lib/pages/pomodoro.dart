import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/cronometro.dart';
import 'package:pomodoro/components/entrada_tempo.dart';
import 'package:pomodoro/store/pomodoro_store.dart';
import 'package:provider/provider.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(
        children: [
          const Expanded(
            child: Cronometro(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 40,
            ),
            child: Observer(
              builder: (_) => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  EntradaTempo(
                    titulo: 'Trabalho',
                    valor: store.workTime,
                    incr: store.iniciado && store.estaTrabalhando()
                        ? null
                        : store.increaseTimeWorking,
                    decr: store.iniciado && store.estaTrabalhando()
                        ? null
                        : store.decrementTimeWorking,
                  ),
                  EntradaTempo(
                    titulo: 'Descanso',
                    valor: store.breakTime,
                    incr: store.iniciado && store.estaDescansando()
                        ? null
                        : store.increaseTimeBreak,
                    decr: store.iniciado && store.estaDescansando()
                        ? null
                        : store.decrementTimeBreak,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
