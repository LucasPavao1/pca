import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class cade extends StatefulWidget {
  const cade({super.key});

  @override
  State<cade> createState() => _cadeState();
}

class _cadeState extends State<cade> {
  get cardNumberController => null;

@override 
Widget build(BuildContext context) {
return Scaffold(
      backgroundColor: Colors.blue,
      drawerScrimColor: Colors.white,
      appBar: AppBar(title: const Text("Cadastro")),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const Spacer(),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      controller: cardNumberController,
                      keyboardType: TextInputType.text,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(8),
                      ],
                      decoration: const InputDecoration(hintText: "Data Nascimento"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: TextFormField(
                        decoration:
                            const InputDecoration(hintText: "Email"),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.symmetric(vertical: 16),
                      child: TextFormField(
                        decoration:
                            const InputDecoration(hintText: "Nome Completo"),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.symmetric(vertical: 16),
                      child: TextFormField(
                        decoration:
                            const InputDecoration(hintText: "Senha"),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.symmetric(vertical: 16),
                      child: TextFormField(
                        decoration:
                            const InputDecoration(hintText: "Repetir Senha"),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.symmetric(vertical: 16),
                      child: TextFormField(
                        decoration:
                            const InputDecoration(hintText: "Endereço"),
                      ),
                    ),
                
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              // Limit the input
                              LengthLimitingTextInputFormatter(11),
                            ],
                            decoration: const InputDecoration(hintText: "CPF"),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(12),
                            ],
                            decoration:
                                const InputDecoration(hintText: "Telefone"),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(flex: 2),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: ElevatedButton(
                  child: const Text("Enviar"),
                  onPressed: () {},
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}



