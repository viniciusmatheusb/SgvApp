import 'package:flutter/material.dart';
import 'package:sgvapp/Pages/Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SGV - Agenda',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginPge(),
    );
  }
}

class LoginPge extends StatelessWidget {
  const LoginPge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('SGV - Agendas'),
        ),
      ),
      body: LoginPage(),
      bottomSheet: Container(
        width: double.infinity,
        color: Colors.white,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.copyright),
            Text('Sesc TO - Desenvolvido pela ASTI'),
          ],
        ),
      ),
    );
  }
}
