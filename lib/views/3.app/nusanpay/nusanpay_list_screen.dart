import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nusantrip/views/3.app/widget/payment_status_screen.dart';
import 'package:nusantrip/views/3.app/widget/payment_webview.dart';

import '../../../styles/styles.dart';
import 'nusanpay_status_screen.dart';

class NusanpayListScreen extends StatelessWidget {
  static const routeName = './nusanpayList';
  const NusanpayListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Nusanpay",
          style: GoogleFonts.montserrat(
              color: Styles.lightBlue, fontWeight: FontWeight.w500),
        ),
        titleSpacing: 0,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back, color: Styles.lightBlue),
        ),
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              infoUser(context),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 40, 40, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Styles.darkBlue),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(119, 119, 119, 0.25),
                                  blurRadius: 6,
                                )
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Top Up',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      color: Styles.darkBlue,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '20k',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 18,
                                      color: Styles.darkBlue,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Styles.darkBlue),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(119, 119, 119, 0.25),
                                  blurRadius: 6,
                                )
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Top Up',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      color: Styles.darkBlue,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '50k',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 18,
                                      color: Styles.darkBlue,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Styles.darkBlue),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(119, 119, 119, 0.25),
                                  blurRadius: 6,
                                )
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Top Up',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      color: Styles.darkBlue,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '100k',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 18,
                                      color: Styles.darkBlue,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Styles.darkBlue),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(119, 119, 119, 0.25),
                                  blurRadius: 6,
                                )
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Top Up',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      color: Styles.darkBlue,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '200k',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 18,
                                      color: Styles.darkBlue,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Styles.darkBlue),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(119, 119, 119, 0.25),
                                  blurRadius: 6,
                                )
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Top Up',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      color: Styles.darkBlue,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '1 Juta',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 18,
                                      color: Styles.darkBlue,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Styles.darkBlue),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(119, 119, 119, 0.25),
                                  blurRadius: 6,
                                )
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Top Up',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      color: Styles.darkBlue,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '1.5 Juta',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 18,
                                      color: Styles.darkBlue,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Styles.darkBlue),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(119, 119, 119, 0.25),
                                  blurRadius: 6,
                                )
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Top Up',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      color: Styles.darkBlue,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '3 Juta',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 18,
                                      color: Styles.darkBlue,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Styles.darkBlue),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(119, 119, 119, 0.25),
                                  blurRadius: 6,
                                )
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Top Up',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      color: Styles.darkBlue,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '5 Juta',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 18,
                                      color: Styles.darkBlue,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Styles.darkBlue),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(119, 119, 119, 0.25),
                                  blurRadius: 6,
                                )
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Top Up',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      color: Styles.darkBlue,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '10 Juta',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 18,
                                      color: Styles.darkBlue,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Styles.darkBlue),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(119, 119, 119, 0.25),
                                  blurRadius: 6,
                                )
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Top Up',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      color: Styles.darkBlue,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '20 Juta',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 18,
                                      color: Styles.darkBlue,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(NusanpayStatusScreen.routeName);
                  },
                  style: Styles.primaryButton,
                  child: const Text(
                    'Top Up',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget infoUser(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(NusanpayListScreen.routeName);
      },
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/account_info_background.png"),
              fit: BoxFit.cover),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Welcome,",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600, color: Colors.white),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              "Benny Septiawan Salim",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "Nusanpay",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 10),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              "Rp 20.000.000,00",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
