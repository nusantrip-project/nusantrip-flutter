import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../styles/styles.dart';
import '../widget/ticket_detail_screen.dart';

class TiketScreen extends StatelessWidget {
  static const routeName = './tiket';
  const TiketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "My Ticket",
          style: GoogleFonts.montserrat(
              color: Styles.lightBlue, fontWeight: FontWeight.w500),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              style: GoogleFonts.montserrat(fontSize: 11),
              decoration: InputDecoration(
                hintText: "Cari disini",
                hintStyle: GoogleFonts.montserrat(fontSize: 11),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 200,
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    margin:
                        const EdgeInsets.only(bottom: 10, left: 3, right: 3),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(250, 250, 250, 1.0),
                      border: Border.all(color: Colors.grey),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(119, 119, 119, 0.25),
                          blurRadius: 6,
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Image.asset(
                          "assets/unja.jpg",
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(TicketDetailScreen.routeName);
                          },
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(10, 3, 10, 3),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "Paket trip Unja",
                                        style: GoogleFonts.montserrat(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/star.svg",
                                          width: 11,
                                        ),
                                        const SizedBox(
                                          width: 2,
                                        ),
                                        Text(
                                          "5/5",
                                          style: GoogleFonts.montserrat(
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Rp 1.200.000/pax",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 9,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "24-27 Februari 2022",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
