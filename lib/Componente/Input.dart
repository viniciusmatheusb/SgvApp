import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final double width;
  final double height;
  final String nome;
  final bool? mostrarTexto;

  const Input({
    Key? key,
    required this.width,
    required this.height,
    required this.nome,
    this.mostrarTexto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextField(
        obscureText: mostrarTexto == false ? true : false,
        decoration: InputDecoration(
          labelText: nome,
          labelStyle: const TextStyle(
            color: Colors.black,
          ),
          border: const OutlineInputBorder(
              borderSide: BorderSide(
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.all(Radius.circular(1)),
              gapPadding: 20),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}
