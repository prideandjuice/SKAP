import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Latar belakang putih
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Semua elemen ada di tengah
            crossAxisAlignment: CrossAxisAlignment.center, // Konten tetap di tengah horizontal
            children: [
              Text(
                'SKAP',
                style: TextStyle(
                  fontSize: 32, // Ukuran huruf besar
                  fontWeight: FontWeight.bold,
                  color: Colors.purple[800], // Warna ungu
                  letterSpacing: 2.0, // Spasi antar huruf
                ),
              ),
              const SizedBox(height: 20),

              // GestureDetector membungkus gambar dengan benar
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: Image.asset(
                  'assets/logo_skap.png', // Pastikan gambarnya ada di folder assets
                  width: 180, // Sesuaikan ukuran gambar
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
