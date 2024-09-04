import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/cronometro_button.dart';
import 'package:pomodoro/store/pomodoro_store.dart';
import 'package:provider/provider.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Observer(
      builder: (_) => Container(
        color: store.estaTrabalhando() ? Colors.red : Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              store.estaTrabalhando()
                  ? 'Hora de trabalhar'
                  : 'Hora de descansar',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 35, color: Colors.white),
            ),
            Text(
              textAlign: TextAlign.center,
              '${store.minutos.toString().padLeft(2, '0')} : ${store.segundos.toString().padLeft(2, '0')}',
              style: const TextStyle(fontSize: 100, color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if (!store.iniciado)
                  CronometroButton(
                    text: 'Iniciar',
                    icon: Icons.play_arrow,
                    onPressed: store.iniciar,
                  ),
                if (store.iniciado)
                  CronometroButton(
                    text: 'Parar',
                    icon: Icons.stop,
                    onPressed: store.parar,
                  ),
                CronometroButton(
                  text: 'Reiniciar',
                  icon: Icons.refresh,
                  onPressed: store.resetar,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
