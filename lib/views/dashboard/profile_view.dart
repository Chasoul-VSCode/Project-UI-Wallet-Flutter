import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final String userName = 'Chasoul UIX';
  final String accountNumber = '1234 5678 9876'; // Contoh nomor rekening
  final double saldo = 1500000; // Contoh saldo

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Bagian Foto Profil
              const Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage:
                      AssetImage('assets/images/me.jpg'), // Gambar contoh
                ),
              ),
              const SizedBox(height: 16),

              // Nama Pengguna
              Text(
                userName,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),

              // Nomor Rekening
              Text(
                'Account: $accountNumber',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 8),

              // Saldo Pengguna
              Text(
                'Saldo: Rp ${saldo.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 30),

              // Kartu untuk Menambah Kartu Baru atau Melihat Kartu Tersimpan
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Manage Cards',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      ListTile(
                        leading: const Icon(Icons.add_card, color: Colors.blue),
                        title: const Text('Add New Card'),
                        onTap: () {
                          // Aksi untuk menambah kartu baru
                        },
                      ),
                      const Divider(),
                      ListTile(
                        leading:
                            const Icon(Icons.credit_card, color: Colors.green),
                        title: const Text('View Saved Cards'),
                        onTap: () {
                          // Aksi untuk melihat kartu tersimpan
                        },
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Kartu untuk Opsi Lainnya (Pengaturan, Bantuan, dll.)
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Other Options',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      ListTile(
                        leading: const Icon(Icons.settings, color: Colors.grey),
                        title: const Text('Settings'),
                        onTap: () {
                          // Aksi untuk pengaturan
                        },
                      ),
                      const Divider(),
                      ListTile(
                        leading: const Icon(Icons.help_outline,
                            color: Colors.orange),
                        title: const Text('Help & Support'),
                        onTap: () {
                          // Aksi untuk bantuan dan dukungan
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
