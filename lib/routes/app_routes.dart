import 'package:flutter/material.dart';
import 'package:mobiledev_per2/views/auth/login_page.dart';
import 'package:mobiledev_per2/views/auth/register_page.dart';
import 'package:mobiledev_per2/views/home/welcome_page.dart';
 
class AppRoutes {
   static Map<String, WidgetBuilder> routes = {
    '/login': (context) => LoginPage(),
    '/welcome': (context) => WelcomePage(),
    '/register': (context) => RegisterPage(),
  };
}