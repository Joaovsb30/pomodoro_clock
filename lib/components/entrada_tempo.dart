import 'package:flutter/material.dart';
import 'package:pomodoro/components/entrada_tempo_button.dart';
import 'package:pomodoro/store/pomodoro_store.dart';
import 'package:provider/provider.dart';

class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;
  final void Function()? incr;
  final void Function()? decr;

  const EntradaTempo({
    super.key,
    required this.titulo,
    required this.valor,
    this.incr,
    this.decr,
  });

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          titulo,
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            EntradaTempoButton(
              icone: Icons.add,
              click: incr,
              color: store.estaTrabalhando() ? Colors.red : Colors.green,
            ),
            // IconButton(
            //   icon: Icon(
            //     Icons.add,
            //     color: store.estaTrabalhando() ? Colors.red : Colors.green,
            //   ),
            //   onPressed: incr,
            // ),
            Text(
              '${valor.toString()} min',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            EntradaTempoButton(
              icone: Icons.remove,
              click: decr,
              color: store.estaTrabalhando() ? Colors.red : Colors.green,
            )
            // IconButton(
            //   icon: Icon(
            //     Icons.remove,
            //     color: store.estaTrabalhando() ? Colors.red : Colors.green,
            //   ),
            //   onPressed: decr,
            // ),
          ],
        ),
      ],
    );
  }
}
