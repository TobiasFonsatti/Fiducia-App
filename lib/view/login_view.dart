import 'package:flutter/material.dart';
import '../controller/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _controller = LoginController();
  final _userController = TextEditingController();
  final _passController = TextEditingController();
  String? _message;

  void _login() {
    final user = _userController.text;
    final pass = _passController.text;
    final success = _controller.login(user, pass);
    setState(() {
      _message = success ? 'Login realizado com sucesso!' : 'Usuário ou senha inválidos.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _userController,
              decoration: const InputDecoration(labelText: 'Usuário'),
            ),
            TextField(
              controller: _passController,
              decoration: const InputDecoration(labelText: 'Senha'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _login,
              child: const Text('Entrar'),
            ),
            if (_message != null) ...[
              const SizedBox(height: 20),
              Text(_message!, style: TextStyle(color: Colors.red)),
            ]
          ],
        ),
      ),
    );
  }
}
