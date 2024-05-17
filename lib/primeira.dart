import 'package:flutter/material.dart';
import 'package:pca/Km_Percorrido.dart';
import 'package:pca/historico.dart';
// ignore: unused_import
import 'package:pca/home_page.dart';
import 'package:pca/pagamento.dart';
import 'package:pca/segunda.dart';



void main() {
  runApp(const MyApp()); 
}
 
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

class primeira extends StatefulWidget {
  const primeira({super.key});

  @override
  State<primeira> createState() => _primeiraState();
}

// ignore: camel_case_types
class _primeiraState extends State<primeira> {


 @override 
Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      color:Colors.blue,
      padding: const EdgeInsets.all(16),
      child:Center(
      child:Column(
   
  
    mainAxisAlignment:MainAxisAlignment.center ,
    children: [
      Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadiusDirectional.circular(16),
        ),
  
child: Column(
        children: [
        const Text("<<<<<<<<<<BikeMaX>>>>>>>>>>>",
        style: TextStyle(fontSize: 25,
        backgroundColor: Colors.blue,
        color: Colors.white,
        fontFamily: AutofillHints.birthday)
          ),
            const SizedBox(height:16),
            ElevatedButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)
             =>  const segunda()));},
             child: const Text('Mapa')),

            const SizedBox(height:16),
            ElevatedButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)
            =>  const historico()));},
            child: const Text('Historico')),

            const SizedBox(height:16),
            ElevatedButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)
            =>  const pagamento()));},
            child: const Text('Pagamento')),

            const SizedBox(height:16),
            ElevatedButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)
            =>  const metro()));},
            child: const Text('Metros Percorrido')),
  ], 
        
              ),
            
            ),
         ],
        ),
       )
    ),
  );
  
  }
}



