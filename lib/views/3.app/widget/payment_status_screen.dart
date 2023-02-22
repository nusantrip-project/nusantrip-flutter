import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nusantrip/views/3.app/2_halamantiket/tiket_screen.dart';

import '../../../styles/styles.dart';
import '../bottomnav_widget.dart';

class PaymentStatusScreen extends StatelessWidget {
  static const routeName = './paymentStatus';
  const PaymentStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text(
      //     "Status Pembayaran",
      //     style: GoogleFonts.montserrat(
      //         color: Styles.lightBlue, fontWeight: FontWeight.w500),
      //   ),
      //   automaticallyImplyLeading: false,
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      // ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/success.png",
                width: 120,
                height: 120,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Pembayaran berhasil",
                style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Selamat memulai perjalanan :)",
                style:
                    GoogleFonts.montserrat(color: Colors.black, fontSize: 14),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "TERBAYAR",
                      style: GoogleFonts.roboto(
                          color: Colors.grey,
                          fontWeight: FontWeight.w700,
                          fontSize: 10),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Rp 2.000.000,00",
                      style: GoogleFonts.montserrat(
                          color: Colors.black.withOpacity(0.7),
                          fontWeight: FontWeight.w700,
                          fontSize: 13),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "TRANSACTION ID",
                      style: GoogleFonts.roboto(
                          color: Colors.grey,
                          fontWeight: FontWeight.w700,
                          fontSize: 10),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "XXXXXXX",
                      style: GoogleFonts.montserrat(
                          color: Colors.black.withOpacity(0.7),
                          fontWeight: FontWeight.w700,
                          fontSize: 13),
                    ),
                  ],
                ),
              ),
              const Divider(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(BottomNavWidget.routeName);
                  },
                  style: Styles.primaryButton,
                  child: const Text(
                    'Balik ke Halaman Home',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
