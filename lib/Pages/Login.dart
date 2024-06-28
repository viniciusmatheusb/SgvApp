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
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(
            'assets/usuario.png',
            width: 120,
            height: 120,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 20,
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
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AgendasPage(),
                ),
              );
            },
            child: const Text('Entrar'),
          ),
        ),
      ],
    );
  }
}
