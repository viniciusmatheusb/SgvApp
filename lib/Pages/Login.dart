import 'package:flutter/material.dart';

import '../Componente/Input.dart';
import 'AgendasPage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Image.asset(
            'assets/usuario.png',
            width: 100,
            height: 100,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.black,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Input(
              width: 300,
              height: 50,
              nome: 'Usuario',
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Input(
              width: 300,
              height: 50,
              nome: 'Senha',
              mostrarTexto: false,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AgendasPage(),
                ),
              );
            },
            child: Text('Entrar'),
          ),
        ),
      ],
    );
  }
}
