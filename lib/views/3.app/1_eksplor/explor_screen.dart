import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nusantrip/views/3.app/1_eksplor/trip_search_screen.dart';
import 'package:nusantrip/views/3.app/nusanpay/nusanpay_list_screen.dart';
import 'package:nusantrip/views/3.app/widget/ticket_detail_screen.dart';

import '../../../styles/styles.dart';

class ExplorScreen extends StatelessWidget {
  static const routeName = './explor';
  const ExplorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List palingMurah = [];
    List theLongTraveler = [];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 120,
        leading: Container(
          margin: const EdgeInsets.only(left: 15),
          child: Image.asset(
            "assets/nusantrip_complete_logo.png",
            width: 200,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            infoUser(context),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  //2. SEARCH BAR
                  searchBar(context),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Paling Murah",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //3. LIST TRIP PALING MURAH
                  listTrip(context, palingMurah),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "The Long Traveller",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //4. LIST TRIP THE LONG TRAVELLER
                  listTrip(context, theLongTraveler),
                ],
              ),
            ),
          ],
        ),
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

  Widget searchBar(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(TripSearchScreen.routeName);
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: const Color.fromRGBO(250, 250, 250, 1.0),
            border: Border.all(
              color: const Color.fromRGBO(61, 169, 242, 0.60),
            ),
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(119, 119, 119, 0.25),
                blurRadius: 6,
              )
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.search,
              size: 16,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "cari paket wisata / tiket wisata",
              style: GoogleFonts.montserrat(fontSize: 11),
            ),
          ],
        ),
      ),
    );
  }

  Widget listTrip(BuildContext context, List listCategory) {
    return SizedBox(
      height: 220,
      width: double.infinity,
      child: ListView.builder(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
            ),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(TicketDetailScreen.routeName);
              },
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(color: Styles.lightBlue),
                    width: 180,
                    padding: const EdgeInsets.fromLTRB(10, 3, 10, 3),
                    child: Text(
                      "2 hari 10 malam",
                      style: GoogleFonts.montserrat(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Image.asset(
                    "assets/unja.jpg",
                    width: 180,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    height: 75,
                    width: 180,
                    padding: const EdgeInsets.fromLTRB(10, 3, 10, 3),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
