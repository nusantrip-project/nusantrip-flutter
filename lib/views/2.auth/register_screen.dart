import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nusantrip/styles/styles.dart';

import '../1.intro/onboarding_screen.dart';
import 'biodata_screen.dart';
import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  static const routeName = './register';
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool pwVisible = false;
  bool confirmPwVisible = false;
  @override
  void initState() {
    setState(() {
      pwVisible = pwVisible;
      confirmPwVisible = confirmPwVisible;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Register",
          style: GoogleFonts.montserrat(
              color: Styles.lightBlue, fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed(OnboardingScreen.routeName);
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
              'Belum punya akun?\nRegistrasi disini',
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
            TextField(
              style: GoogleFonts.montserrat(fontSize: 14),
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: GoogleFonts.montserrat(fontSize: 14),
                  suffix: IconButton(
                    icon: pwVisible == false
                        ? const Icon(Icons.visibility_off)
                        : const Icon(Icons.visibility),
                    onPressed: () {
                      setState(() {
                        pwVisible = !pwVisible;
                      });
                    },
                  )),
              obscureText: pwVisible == false ? true : false,
            ),
            TextField(
              style: GoogleFonts.montserrat(fontSize: 14),
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  hintText: "Confirm password",
                  hintStyle: GoogleFonts.montserrat(fontSize: 14),
                  suffix: IconButton(
                    icon: confirmPwVisible == false
                        ? const Icon(Icons.visibility_off)
                        : const Icon(Icons.visibility),
                    onPressed: () {
                      setState(() {
                        confirmPwVisible = !confirmPwVisible;
                      });
                    },
                  )),
              obscureText: confirmPwVisible == false ? true : false,
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(BiodataScreen.routeName);
              },
              style: Styles.primaryButton,
              child: const Text(
                'Buat Akun',
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
                'Punya akun? Silahkan login disini',
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
