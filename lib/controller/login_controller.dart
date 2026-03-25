class LoginController {
  String? username;
  String? password;

  bool login(String user, String pass) {
    // Simulação de autenticação simples
    if (user == 'admin' && pass == '1234') {
      username = user;
      password = pass;
      return true;
    }
    return false;
  }
}
