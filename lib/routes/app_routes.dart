import 'package:flutter/material.dart';
import 'package:mobiledev_per2/views/auth/login_page.dart';
import 'package:mobiledev_per2/views/auth/register_page.dart';
import 'package:mobiledev_per2/views/dashboard/chashpay_view.dart';
import 'package:mobiledev_per2/views/dashboard/dashboard_view.dart';
import 'package:mobiledev_per2/views/dashboard/profile_view.dart';
import 'package:mobiledev_per2/views/home/welcome_page.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    '/login': (context) => LoginPage(),
    '/welcome': (context) => const WelcomePage(),
    '/register': (context) => RegisterPage(),
    '/dashboard': (context) => const DashboardView(),
    '/chashpay': (context) => const ChashpayView(),
    '/profile': (context) => const ProfileView()
  };
}
