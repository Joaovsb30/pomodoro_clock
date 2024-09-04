import 'package:flutter/material.dart';

class EntradaTempoButton extends StatelessWidget {
  final IconData? icone;
  final void Function()? click;
  final Color? color;

  const EntradaTempoButton({
    required this.icone,
    required this.click,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: const CircleBorder(),
      ),
      onPressed: click,
      child: Icon(
        icone,
        color: Colors.white,
      ),
    );
  }
}
