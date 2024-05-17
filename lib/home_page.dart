import 'package:flutter/material.dart' ;
import 'package:pca/cadastro.dart';
import 'package:pca/primeira.dart';

class LoginScreen extends StatelessWidget{
   LoginScreen({super.key});
final TextEditingController _emailController=TextEditingController() ; 
final TextEditingController _senhaController=TextEditingController()  ;

 

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
          const Text("BikeMaX",
          style: TextStyle(fontSize: 25,
         backgroundColor: Colors.blue,
         color: Colors.white,
         fontFamily: AutofillHints.birthday)
          ),
          const SizedBox(height: 15),
          TextField(
            controller:_emailController ,
            decoration: const InputDecoration(
              hintText: 'E-mail ou Nome'
            ),
          ),
          
          const SizedBox(height: 16),
          TextField(
            obscureText: true,
            controller: _senhaController,
            decoration: const InputDecoration(
              hintText: 'Senha'
            ),
          ),
            const SizedBox(height:16),
            ElevatedButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)
             =>  const primeira()));},
             child: const Text('Entrar')),
             const SizedBox(height:16),
            ElevatedButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)
             =>  const cade()));},
             child: const Text('Criar Conta')),

            TextButton(onPressed: (){}, child:const Text("Entrar Google") ),
            const SizedBox(height: 16),
  
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





