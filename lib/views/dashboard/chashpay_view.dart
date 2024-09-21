import 'package:flutter/material.dart';

class ChashpayView extends StatefulWidget {
  const ChashpayView({super.key});

  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<ChashpayView> {
  final String userName = 'Chasoul.uix';
  final String accountNumber = '1234 5678 9876'; // Example account number
  final double saldo = 1500000; // Example balance

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header: Nama Pengguna, Total Saldo, Account Number
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Hello,',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            userName,
                            style: const TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Saldo: Rp ${saldo.toStringAsFixed(0)}',
                            style: const TextStyle(
                                fontSize: 18, color: Colors.green),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Account: $accountNumber',
                            style: const TextStyle(
                                fontSize: 16, color: Colors.grey),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {
                          // Aksi scan QR
                        },
                        icon: const Icon(Icons.qr_code_scanner, size: 30),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Card to Add a New Card
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const Text(
                        'Manage Cards',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      ListTile(
                        leading: const Icon(Icons.add_card, color: Colors.blue),
                        title: const Text('Add New Card'),
                        onTap: () {
                          // Action to add new card
                        },
                      ),
                      ListTile(
                        leading:
                            const Icon(Icons.credit_card, color: Colors.green),
                        title: const Text('View Saved Cards'),
                        onTap: () {
                          // Action to view saved cards
                        },
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // Widget untuk tombol layanan (pulsa, tagihan, token listrik)
  Widget _buildServiceButton({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.blue,
            child: Icon(icon, color: Colors.white, size: 30),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
