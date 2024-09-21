import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final String userName = 'Chasoul.uix';
  final double saldo = 1500000; // Contoh saldo

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header: Nama Pengguna, Total Saldo, Scan QR
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
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
                          const Text(
                            'Chasoul.uix',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Saldo: Rp ${saldo.toStringAsFixed(0)}',
                            style: const TextStyle(
                                fontSize: 18, color: Colors.green),
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

              // Card Bayar Pulsa, Tagihan, Token Listrik
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
                        'Layanan Pembayaran',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _buildServiceButton(
                            icon: Icons.phone_android,
                            label: 'Pulsa',
                            onTap: () {
                              // Aksi bayar pulsa
                            },
                          ),
                          _buildServiceButton(
                            icon: Icons.receipt_long,
                            label: 'Tagihan',
                            onTap: () {
                              // Aksi bayar tagihan
                            },
                          ),
                          _buildServiceButton(
                            icon: Icons.flash_on,
                            label: 'Token',
                            onTap: () {
                              // Aksi bayar token listrik
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Bagian bawah bebas (misalnya promo, atau produk tambahan)
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
                        'Promo Menarik',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      ListTile(
                        leading:
                            const Icon(Icons.local_offer, color: Colors.red),
                        title: const Text('Diskon Pulsa 10%'),
                        subtitle: const Text('Berlaku hingga akhir bulan ini!'),
                        onTap: () {
                          // Aksi untuk promo
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.shopping_bag,
                            color: Colors.orange),
                        title: const Text('Cashback 5% untuk Belanja'),
                        subtitle: const Text('Gunakan kode promo SHOPNOW'),
                        onTap: () {
                          // Aksi untuk promo
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
