import 'package:flutter/material.dart';

class ResultadoWidget extends StatelessWidget implements PreferredSizeWidget {
  final bool? venceu;
  final Function onReiniciar;

  // ignore: use_key_in_widget_constructors
  const ResultadoWidget({
    required this.venceu,
    required this.onReiniciar,
  });

  Color _getCor() {
    if (venceu == null) {
      return Colors.yellow;
    } else if (venceu!) {
      return Colors.green.shade300;
    } else {
      return Colors.red.shade300;
    }
  }

  IconData _getIcon() {
    if (venceu == null) {
      return Icons.sentiment_satisfied;
    } else if (venceu!) {
      return Icons.sentiment_very_satisfied;
    } else {
      return Icons.sentiment_very_dissatisfied;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(0),
            child: CircleAvatar(
              backgroundColor: _getCor(),
              child: IconButton(
                icon: Icon(
                  _getIcon(),
                  color: Colors.black,
                  size: 35,
                ),
                onPressed: () => onReiniciar(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(120);
}
