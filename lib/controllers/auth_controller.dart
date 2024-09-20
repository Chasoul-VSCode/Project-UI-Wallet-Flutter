import 'package:flutter/material.dart';
 
class AuthController {
  // Method untuk login
  void login(BuildContext context, String username, String password) {
    // Implementasi logika autentikasi
    if (username == "123" && password == "123") {
      Navigator.pushReplacementNamed(context, '/welcome');
    } else {
      print('Login gagal');
    }
  }
}