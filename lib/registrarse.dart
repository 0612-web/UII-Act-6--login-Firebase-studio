import 'package:flutter/material.dart';

class RegistrarseScreen extends StatelessWidget {
  const RegistrarseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text("SIGN UP", style: TextStyle(color: Colors.black, letterSpacing: 2)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Crear cuenta", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const Text("Es gratis y rápido", style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 30),
            _inputField("Username"),
            const SizedBox(height: 15),
            _inputField("Email"),
            const SizedBox(height: 15),
            _inputField("Password", isPassword: true),
            const SizedBox(height: 15),
            _inputField("Confirm Password", isPassword: true),
            const SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {}, // Aquí iría la lógica de registro
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade700),
                child: const Text("REGISTRARSE", style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _inputField(String label, {bool isPassword = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        TextField(
          obscureText: isPassword,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            contentPadding: const EdgeInsets.symmetric(horizontal: 15),
          ),
        ),
      ],
    );
  }
}