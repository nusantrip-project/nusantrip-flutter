import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../styles/styles.dart';

class NotificationScreen extends StatelessWidget {
  static const routeName = './notification';
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Notifications",
          style: GoogleFonts.montserrat(
              color: Styles.lightBlue, fontWeight: FontWeight.w500),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(119, 119, 119, 0.25),
                    blurRadius: 6,
                  )
                ],
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                "Pembayaran berhasil untuk Paket Trip Bali",
                style: GoogleFonts.montserrat(fontSize: 11),
              ),
            );
          },
        ),
      ),
    );
  }
}
