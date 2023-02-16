import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../styles/styles.dart';
import 'login_screen.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});
  static const routeName = './changepassword';

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Ganti password",
          style: GoogleFonts.montserrat(
              color: Styles.lightBlue, fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Styles.lightBlue,
          ),
        ),
        titleSpacing: 0,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              "assets/nusantrip_logo.png",
              width: 120,
              height: 120,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Lupa password?\nmasukkan email Anda!',
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Styles.lightBlue),
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              style: GoogleFonts.montserrat(fontSize: 14),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Email",
                hintStyle: GoogleFonts.montserrat(fontSize: 14),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {},
              style: Styles.primaryButton,
              child: const Text(
                'Ganti Password',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(LoginScreen.routeName);
              },
              child: Text(
                'Kembali ke login',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Styles.lightBlue,
                    decoration: TextDecoration.underline),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
