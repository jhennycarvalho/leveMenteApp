import 'package:flutter/material.dart';
import 'tipo_usuario.dart';

class TelaCadastroNome extends StatefulWidget {
  const TelaCadastroNome({super.key});

  @override
  State<TelaCadastroNome> createState() => _TelaCadastroNomeState();
}

class _TelaCadastroNomeState extends State<TelaCadastroNome> {
  final _nomeController = TextEditingController();

  @override
  void dispose() {
    _nomeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.psychology, size: 80, color: Color(0xFF38A169)),
              const SizedBox(height: 32),
              const Text('Psicoterapia acessível', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 4),
              const Text('Como podemos te chamar?', style: TextStyle(color: Colors.grey)),
              const SizedBox(height: 16),
              TextField(
                controller: _nomeController,
                decoration: const InputDecoration(hintText: 'Seu nome'),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {
                  final nome = _nomeController.text.trim();
                  if (nome.isNotEmpty) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => TelaTipoUsuario(nomeUsuario: nome),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Por favor, informe seu nome.')),
                    );
                  }
                },
                child: const Text('Continuar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}