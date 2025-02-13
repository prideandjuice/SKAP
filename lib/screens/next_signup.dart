import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NextSignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[200], // Latar belakang ungu muda
      body: Column(
        children: [
          // Header Ungu dengan Teks
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.purple[600], // Warna header
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Info:', // Judul Header
                  style: GoogleFonts.gabarito(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 60),
                Text(
                  'Jangan lupa masukkan nomor kerabat terdekat mu bila ada keadaan berbahaya ya!',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40), // Jarak antara header dan form

          // Form Input
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                _buildTextField('Masukkan Nomor Kerabat'),
                SizedBox(height: 30),
                _buildTextField('Nama Kerabat'),
                SizedBox(height: 30),
                _buildTextField('Jelaskan kedekatan kerabat'),
                SizedBox(height: 50),

                // Tombol Lanjut
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple[500], // Warna tombol
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    // Tambahkan logika lanjut di sini
                  },
                  child: Text(
                    'LANJUT',
                    style: GoogleFonts.gabarito(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Widget untuk membuat TextField dengan mudah
  Widget _buildTextField(String hintText, {bool isPassword = false}) {
    return TextField(
      obscureText: isPassword, // Sembunyikan teks jika input password
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      ),
      style: GoogleFonts.plusJakartaSans(
        fontSize: 16,
        color: Colors.black87,
      ),
    );
  }
}
