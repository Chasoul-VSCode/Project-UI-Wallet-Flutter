import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  final String userName = 'Chasoul.uix';
  final String accountNumber = '1234 5678 9876'; // Contoh nomor rekening

  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: Colors.blue),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile Photo
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                      'assets/images/me.jpg'), // Ganti dengan path gambar lokal
                ),
                const SizedBox(height: 10),

                // Nama Pengguna
                Text(
                  userName,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),

                // Nomor Rekening
                Text(
                  'Account: $accountNumber',
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text('Profile'),
            onTap: () {
              Navigator.pop(context, '/profile'); // Aksi saat menu Home diklik
            },
          ),
          ListTile(
            title: const Text('ChashPay'),
            onTap: () {
              Navigator.pop(
                  context, '/chashpay'); // Aksi saat menu ChashPay diklik
            },
          ),
          ListTile(
            title: const Text('Logout'),
            onTap: () {
              Navigator.pushReplacementNamed(
                  context, '/login'); // Aksi saat Logout diklik
            },
          ),
        ],
      ),
    );
  }
}
