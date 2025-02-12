import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Latar belakang putih
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Semua elemen ada di tengah
          crossAxisAlignment: CrossAxisAlignment.center, // Pastikan konten di tengah horizontal
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
            SizedBox(height: 20), // Jarak antara teks dan gambar
            Image.asset(
              'assets/logo_skap.png', // Pastikan gambarnya ada di folder assets
              width: 180, // Sesuaikan ukuran gambar
            ),
            
          ],
        ),
      ),
    );
  }
}
