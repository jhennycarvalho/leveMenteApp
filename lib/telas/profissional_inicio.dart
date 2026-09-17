import 'package:flutter/material.dart';

class TelaProfissionalInicio extends StatefulWidget {
  final String nomeUsuario;

  const TelaProfissionalInicio({super.key, required this.nomeUsuario});

  @override
  State<TelaProfissionalInicio> createState() => _TelaProfissionalInicioState();
}

class _TelaProfissionalInicioState extends State<TelaProfissionalInicio> {
  int _abaSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Dr(a). ${widget.nomeUsuario}', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const Text('Painel do Profissional', style: TextStyle(color: Colors.grey, fontSize: 12)),
              const SizedBox(height: 20),
              
              // Métricas
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(12)),
                      child: const Column(
                        children: [
                          Text('5', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                          Text('atendimentos hoje', textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(12)),
                      child: const Column(
                        children: [
                          Text('12', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                          Text('pacientes ativos', textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Lista de Agenda do Dia
              const Text('Agenda de Hoje', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),
              
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Row(
                  children: [
                    CircleAvatar(child: Icon(Icons.person_outline)),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Carlos Silva', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('14:00 - Online', style: TextStyle(fontSize: 12, color: Colors.grey)),
                        ],
                      ),
                    ),
                    Icon(Icons.chevron_right, color: Colors.grey),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _abaSelecionada,
        onTap: (index) => setState(() => _abaSelecionada = index),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.people_outline), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
        ],
      ),
    );
  }
}