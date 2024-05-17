import 'package:flutter/material.dart';
import 'package:pca/primeira.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:Colors.white),
        useMaterial3: true,
      ),
    home: const primeira(),
    );
   
  }
  
}

class segunda extends StatefulWidget {
  const segunda({super.key});

  @override
  State<segunda> createState() => _segundaState();
}

class _segundaState extends State<segunda> {
  @override
  Widget build(BuildContext context) {
    return Container(

    );



  }
}