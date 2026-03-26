import 'package:flutter/material.dart';
import 'login.dart';
import 'registrarse.dart';

void main() {
  runApp(const ZaraApp());
}

class ZaraApp extends StatelessWidget {
  const ZaraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZARA Store',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Georgia', // Fuente elegante
      ),
      home: const WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Colors.grey.shade200],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.redeem_outlined, size: 80, color: Colors.black87),
            const SizedBox(height: 20),
            const Text("welcome", style: TextStyle(fontSize: 20, letterSpacing: 2)),
            const Text("to", style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic)),
            const Text("ZARA", style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold, letterSpacing: -4)),
            const SizedBox(height: 60),
            
            // Botón Iniciar Sesión (Marrón elegante)
            _buildButton(context, "Iniciar sesión", const Color(0xFF8D6E63), const LoginScreen()),
            
            const SizedBox(height: 20),
            
            // Botón Registrarse (Azul elegante)
            _buildButton(context, "Registrarse", const Color(0xFF0D47A1), const RegistrarseScreen()),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String text, Color color, Widget nextScreen) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 8, offset: Offset(0, 4))],
        ),
        child: ElevatedButton(
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => nextScreen)),
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            elevation: 0,
          ),
          child: Text(text, style: const TextStyle(color: Colors.white, fontSize: 18)),
        ),
      ),
    );
  }
}