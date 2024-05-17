import 'package:flutter/material.dart';

class historico extends StatefulWidget {
  const historico({super.key});

  @override
  State<historico> createState() => _historicoState();
}

class _historicoState extends State<historico> {
  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: const BoxDecoration(
      color: Colors.black,
      gradient: LinearGradient(colors:[Colors.blue,Colors.green])
    ),
   child: const Center(
  child: Text(
    'Sem Viagens',
    style: TextStyle(
      backgroundColor: Colors.black,
      color: Colors.cyan,
      fontSize: 35.0, // Tamanho da fonte
      fontWeight: FontWeight.bold, // Peso da fonte
      fontStyle: FontStyle.italic, // Estilo da fonte
      letterSpacing: 2.0, // Espaçamento entre letras
    )
  )
   )
    );


  }
}