import 'package:flutter/material.dart';
import '../controller/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({
    super.key,
    required this.onToggleTheme,
    required this.isDarkMode,
  });

  final VoidCallback onToggleTheme;
  final bool isDarkMode;

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _controller = LoginController();
  final _userController = TextEditingController();
  final _passController = TextEditingController();
  String? _message;
  bool? _isSuccess;

  void _login() {
    final user = _userController.text;
    final pass = _passController.text;
    final success = _controller.login(user, pass);

    setState(() {
      _isSuccess = success;
      _message = success
          ? 'Login realizado com sucesso!'
          : 'Usuário ou senha inválidos.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: widget.onToggleTheme,
            icon: Icon(widget.isDarkMode ? Icons.light_mode : Icons.dark_mode),
            tooltip: widget.isDarkMode ? 'Modo claro' : 'Modo escuro',
          ),
        ],
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: 340,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(
                      Icons.account_balance_wallet,
                      size: 260,
                      color: Colors.blue,
                    );
                  },
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: widget.isDarkMode
                        ? [
                            BoxShadow(
                              color: Colors.grey.shade300.withOpacity(0.18),
                              blurRadius: 10,
                              spreadRadius: 0.4,
                            ),
                          ]
                        : [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.12),
                              blurRadius: 16,
                              spreadRadius: 1,
                            ),
                          ],
                  ),
                  child: Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Login',
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          const SizedBox(height: 16),
                          TextField(
                            controller: _userController,
                            decoration: const InputDecoration(labelText: 'Usuário'),
                          ),
                          const SizedBox(height: 12),
                          TextField(
                            controller: _passController,
                            decoration: const InputDecoration(labelText: 'Senha'),
                            obscureText: true,
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(onPressed: _login, child: const Text('Entrar')),
                              const SizedBox(width: 16),
                              ElevatedButton(
                                onPressed: () {
                                  // lógica para criar conta
                                },
                                child: const Text('Criar conta'),
                              ),
                            ],
                          ),
                          if (_message != null) ...[
                            const SizedBox(height: 20),
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: _isSuccess == true
                                    ? Colors.green.shade100
                                    : Colors.red.shade100,
                                border: Border.all(
                                  color: _isSuccess == true ? Colors.green : Colors.red,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    _isSuccess == true ? Icons.check_circle : Icons.error,
                                    color: _isSuccess == true ? Colors.green : Colors.red,
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Text(
                                      _message!,
                                      style: TextStyle(
                                        color: _isSuccess == true
                                            ? Colors.green.shade900
                                            : Colors.red.shade900,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
