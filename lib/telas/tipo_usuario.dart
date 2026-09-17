import 'package:flutter/material.dart';
import 'paciente_inicio.dart';
import 'profissional_inicio.dart';

class TelaTipoUsuario extends StatelessWidget {
  final String nomeUsuario;

  const TelaTipoUsuario({super.key, required this.nomeUsuario});

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
              Text(
                'Seja bem vindo, $nomeUsuario!\nVocê é',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => TelaPacienteInicio(nomeUsuario: nomeUsuario)),
                ),
                child: const Text('Paciente'),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => TelaProfissionalInicio(nomeUsuario: nomeUsuario)),
                ),
                child: const Text('Profissional'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}