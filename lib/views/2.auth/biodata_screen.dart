import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../styles/styles.dart';
import '../1.intro/onboarding_screen.dart';
import '../3.app/1_eksplor/explor_screen.dart';
import '../3.app/bottomnav_widget.dart';

class BiodataScreen extends StatelessWidget {
  const BiodataScreen({super.key});
  static const routeName = './biodata';

  @override
  Widget build(BuildContext context) {
    List<dynamic> dataProvinsi = [];
    String? selectedProvinceName;
    int? selectedProvinceCode;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Introduce",
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
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/onboarding_image.png"),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Perkenalkan dirimu\nsebelum eksplorasi :)',
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
              decoration: InputDecoration(
                hintText: "Nusantrip ID (lowercase, tanpa spasi)",
                hintStyle: GoogleFonts.montserrat(fontSize: 14),
              ),
            ),
            TextField(
              style: GoogleFonts.montserrat(fontSize: 14),
              decoration: InputDecoration(
                hintText: "Nama (First Name + Last Name)",
                hintStyle: GoogleFonts.montserrat(fontSize: 14),
              ),
            ),
            TextField(
              style: GoogleFonts.montserrat(fontSize: 14),
              decoration: InputDecoration(
                hintText: "Code referal (optional)",
                hintStyle: GoogleFonts.montserrat(fontSize: 14),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(BottomNavWidget.routeName);
              },
              style: Styles.primaryButton,
              child: const Text(
                'Persiapkan Akun',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
