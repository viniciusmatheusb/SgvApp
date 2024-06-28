import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AgendasPage extends StatelessWidget {
  const AgendasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Agendas'),
        ),
      ),
      body: Container(
        color: Color.fromRGBO(167, 167, 167, 1),
        width: double.infinity,
      ),
    );
  }
}
