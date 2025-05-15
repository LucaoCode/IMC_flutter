import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double imc;

  const ResultScreen({super.key, required this.imc});

  String getClassificacaoIMC() {
    if (imc < 18.5) return "Abaixo do peso";
    if (imc < 24.9) return "Peso normal";
    if (imc < 29.9) return "Sobrepeso";
    if (imc < 34.9) return "Obesidade grau I";
    if (imc < 39.9) return "Obesidade grau II";
    return "Obesidade grau III";
  }

  @override
  Widget build(BuildContext context) {
    final classificacao = getClassificacaoIMC();

    return Scaffold(
      appBar: AppBar(title: const Text("Resultado do IMC")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Seu IMC é:", style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 16),
              Text(imc.toStringAsFixed(2),
                  style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold)),
              const SizedBox(height: 24),
              Text(
                classificacao,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Calcular Novamente"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
