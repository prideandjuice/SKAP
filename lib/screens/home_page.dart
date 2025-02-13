import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signup_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 60),
          Image.asset(
            'assets/logo_skap.png',
            width: 180,
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.purple[600],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Keamanan adalah hak setiap perempuan, kapan pun dan di mana pun',
                    style: GoogleFonts.gabarito(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 37),
                  Text(
                    'SKAP (Sistem Keamanan Anak dan Perempuan) menjadi solusi '
                    'memberikan rasa aman bagi perempuan dalam berbagai situasi.',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildButton(context, 'SIGN IN',
                          const Color.fromARGB(255, 205, 173, 210)),
                      const SizedBox(width: 5),
                      _buildButton(context, 'SIGN UP',
                          const Color.fromARGB(255, 205, 173, 210)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(BuildContext context, String text, Color color) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(vertical: 12),
        ),
        onPressed: () {
          if (text == 'SIGN IN') {
            Navigator.pushNamed(context, '/login');
          } else {
            Navigator.pushNamed(context, '/signup');
          }
        },
        child: Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: const Color.fromARGB(255, 89, 9, 139),
          ),
        ),
      ),
    );
  }
}

