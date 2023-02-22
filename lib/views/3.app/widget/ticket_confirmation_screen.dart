import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nusantrip/views/3.app/widget/payment_status_screen.dart';

import '../../../styles/styles.dart';
import '../bottomnav_widget.dart';

class TicketConfirmationScreen extends StatelessWidget {
  static const routeName = "/ticketConfirmation";
  const TicketConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Confirmation",
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Trip Information",
                  style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 15),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "NAMA TRIP",
                  style: GoogleFonts.roboto(
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                      fontSize: 10),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Trip Unja",
                  style: GoogleFonts.montserrat(
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.w700,
                      fontSize: 13),
                ),
                const Divider(),
                Text(
                  "TOUR AGENT",
                  style: GoogleFonts.roboto(
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                      fontSize: 10),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "PT Unja Indonesia",
                  style: GoogleFonts.montserrat(
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.w700,
                      fontSize: 13),
                ),
                const Divider(),
                Text(
                  "DESTINASI",
                  style: GoogleFonts.roboto(
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                      fontSize: 10),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Jakarta-Jambi",
                  style: GoogleFonts.montserrat(
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.w700,
                      fontSize: 13),
                ),
                const Divider(),
                Text(
                  "TANGGAL PERJALANAN",
                  style: GoogleFonts.roboto(
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                      fontSize: 10),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "1 Januari 2022 - 2 Februari 2022",
                  style: GoogleFonts.montserrat(
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.w700,
                      fontSize: 13),
                ),
                const Divider(),
                Text(
                  "JUMLAH PAX",
                  style: GoogleFonts.roboto(
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                      fontSize: 10),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "5 Orang",
                  style: GoogleFonts.montserrat(
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.w700,
                      fontSize: 13),
                ),
                const Divider(),
                Text(
                  "HARGA TOTAL",
                  style: GoogleFonts.roboto(
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                      fontSize: 10),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Rp 10.000.000",
                  style: GoogleFonts.montserrat(
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.w700,
                      fontSize: 13),
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Payment Options",
                  style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 15),
                ),
                const SizedBox(
                  height: 20,
                ),
                DropdownButton(
                  items: <DropdownMenuItem>[
                    DropdownMenuItem(
                      child: Padding(
                        padding: const EdgeInsets.all(3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nusanpay : Benny Septiawan Salim",
                              style: GoogleFonts.roboto(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 11),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Rp 20.000.000",
                              style: GoogleFonts.montserrat(
                                  color: Colors.black.withOpacity(0.7),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // DropdownMenuItem(
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(6),
                    //     child: Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //         Text(
                    //           "Midtrans payment",
                    //           style: GoogleFonts.roboto(
                    //               color: Colors.grey,
                    //               fontWeight: FontWeight.w700,
                    //               fontSize: 11),
                    //         ),
                    //         const SizedBox(
                    //           height: 6,
                    //         ),
                    //         Text(
                    //           "(E-wallet, Credit Card, etc)",
                    //           style: GoogleFonts.montserrat(
                    //               color: Colors.black.withOpacity(0.7),
                    //               fontWeight: FontWeight.w700,
                    //               fontSize: 13),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                  ],
                  onChanged: (value) {},
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet<dynamic>(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return Wrap(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Confirmation",
                                    style: GoogleFonts.montserrat(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Setelah melakukan transaksi, Anda tidak dapat membatalkan maupun melakukan transaksi 2x dalam akun ini.",
                                    style: GoogleFonts.montserrat(
                                        color: Colors.black, fontSize: 13),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pushNamed(
                                          PaymentStatusScreen.routeName);
                                    },
                                    style: Styles.primaryButton,
                                    child: const Text(
                                      'Bayar : Rp 10.000.000,00',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  style: Styles.primaryButton,
                  child: const Text(
                    'Berikutnya',
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
