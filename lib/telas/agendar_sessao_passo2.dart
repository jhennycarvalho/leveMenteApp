import 'package:flutter/material.dart';

class TelaAgendarSessaoPasso2 extends StatelessWidget {
  const TelaAgendarSessaoPasso2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Passo 2 de 4', style: TextStyle(fontSize: 14, color: Colors.grey)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Como você prefere ser atendido(a)?', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text('Toda sessão com estudantes é acompanhada por um psicólogo supervisor responsável.', style: TextStyle(color: Colors.grey, fontSize: 12)),
            const SizedBox(height: 24),
            
            // Opção 1
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.verified_outlined, size: 18),
                      SizedBox(width: 6),
                      Text('Psicólogo(a) CRP', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text('Atendimento com profissional formado e registrado no Conselho.', style: TextStyle(color: Colors.grey, fontSize: 12)),
                ],
              ),
            ),
            const SizedBox(height: 12),
            
            // Opção 2
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.school_outlined, size: 18, color: Colors.grey),
                      SizedBox(width: 6),
                      Text('Estudante em supervisão', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text('Atendimento em formação, supervisionado por um psicólogo responsável.', style: TextStyle(color: Colors.grey, fontSize: 12)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}