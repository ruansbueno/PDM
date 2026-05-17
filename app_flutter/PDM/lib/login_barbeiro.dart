import 'package:flutter/material.dart';

class LoginBarbeiro extends StatefulWidget {
  const LoginBarbeiro({super.key});

  @override
  _LoginBarbeiroState createState() => _LoginBarbeiroState();
}

class _LoginBarbeiroState extends State<LoginBarbeiro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Login Barbeiro',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Usuário',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(height: 25),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 4,
                ),
                onPressed: () {},
                child: Text(
                  'Entrar',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 15),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.black,
                  minimumSize: const Size(double.infinity, 55),
                  side: const BorderSide(color: Colors.black, width: 1.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () => Navigator.pop(context),
                child: Text(
                  'Voltar',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}