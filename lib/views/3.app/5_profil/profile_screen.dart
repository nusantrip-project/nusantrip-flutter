import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nusantrip/views/1.intro/onboarding_screen.dart';
import 'package:nusantrip/views/3.app/5_profil/edit_profile_screen.dart';

import '../../../styles/styles.dart';
import '../nusanpay/nusanpay_list_screen.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = './profile';
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage("assets/unja.jpg"),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Benny Septiawan Salim",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold, fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "bennygho90@gmail.com",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(EditProfileScreen.routeName);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(119, 119, 119, 0.25),
                          blurRadius: 6,
                        )
                      ],
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Edit Profile",
                          style: GoogleFonts.montserrat(fontSize: 15),
                        ),
                        const Icon(
                          Icons.arrow_right_rounded,
                          color: Styles.lightBlue,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(NusanpayListScreen.routeName);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(119, 119, 119, 0.25),
                          blurRadius: 6,
                        )
                      ],
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Nusanpay",
                          style: GoogleFonts.montserrat(fontSize: 15),
                        ),
                        Row(
                          children: [
                            Text(
                              "Rp 20.000.000,00",
                              style: GoogleFonts.montserrat(fontSize: 12),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Icon(
                              Icons.arrow_right_rounded,
                              color: Styles.lightBlue,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(119, 119, 119, 0.25),
                          blurRadius: 6,
                        )
                      ],
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Dark Mode",
                          style: GoogleFonts.montserrat(fontSize: 15),
                        ),
                        const Icon(
                          Icons.arrow_right_rounded,
                          color: Styles.lightBlue,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(119, 119, 119, 0.25),
                          blurRadius: 6,
                        )
                      ],
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "About Developers",
                          style: GoogleFonts.montserrat(fontSize: 15),
                        ),
                        const Icon(
                          Icons.arrow_right_rounded,
                          color: Styles.lightBlue,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(OnboardingScreen.routeName);
                  },
                  style: Styles.primaryButton,
                  child: const Text(
                    'Keluar',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
