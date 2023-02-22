import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nusantrip/views/3.app/widget/ticket_confirmation_screen.dart';

import '../../../styles/styles.dart';

class TicketDetailScreen extends StatelessWidget {
  static const routeName = './ticketDetail';
  const TicketDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "Trip Detail",
          style: GoogleFonts.montserrat(
              color: Styles.lightBlue, fontWeight: FontWeight.w500),
        ),
        titleSpacing: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back, color: Styles.lightBlue),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_outline_outlined,
              color: Styles.lightBlue,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      "assets/unja.jpg",
                      width: double.infinity,
                      height: 260,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      height: 260,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.4),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Trip unja",
                                  style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  "PT Unja Indonesia",
                                  style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets/star.svg",
                                width: 17,
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Text(
                                "5/5",
                                style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Styles.lightBlue,
                                  borderRadius: BorderRadius.circular(300),
                                ),
                                width: 50,
                                height: 50,
                                padding: const EdgeInsets.all(10),
                                child: const Icon(
                                  Icons.route,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Jakarta\n-Jambi",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Styles.lightBlue,
                                  borderRadius: BorderRadius.circular(300),
                                ),
                                width: 50,
                                height: 50,
                                padding: const EdgeInsets.all(10),
                                child: const Icon(
                                  Icons.price_change_rounded,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Harga\n400k/pax",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Styles.lightBlue,
                                  borderRadius: BorderRadius.circular(300),
                                ),
                                width: 50,
                                height: 50,
                                padding: const EdgeInsets.all(10),
                                child: const Icon(
                                  Icons.calendar_month_rounded,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                "1 Jan\n2 Feb 2022",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Styles.lightBlue,
                                  borderRadius: BorderRadius.circular(300),
                                ),
                                width: 50,
                                height: 50,
                                padding: const EdgeInsets.all(10),
                                child: const Icon(
                                  Icons.landscape_rounded,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Wisata\nAlam",
                                style: GoogleFonts.montserrat(
                                    color: Colors.black, fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Styles.lightBlue,
                                  borderRadius: BorderRadius.circular(300),
                                ),
                                width: 50,
                                height: 50,
                                padding: const EdgeInsets.all(10),
                                child: const Icon(
                                  Icons.bus_alert,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Bus\nSleeper",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Deskripsi",
                        style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 15),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet",
                        style: GoogleFonts.montserrat(
                            color: Colors.black, fontSize: 12),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Timeline",
                        style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 15),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      ListView.builder(
                        itemCount: 2,
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Container(
                            padding: const EdgeInsets.all(5),
                            margin: const EdgeInsets.only(bottom: 5),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(119, 119, 119, 0.25),
                                    blurRadius: 0.5)
                              ],
                            ),
                            child: ListTile(
                              contentPadding: const EdgeInsets.all(0),
                              minLeadingWidth: 10,
                              leading: const Icon(
                                  Icons.radio_button_checked_rounded),
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Senin. 1 Januari 2021",
                                    style: GoogleFonts.montserrat(fontSize: 13),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  )
                                ],
                              ),
                              subtitle: Text(
                                "Naik pesawat menuju ke Jambi, bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla ",
                                style: GoogleFonts.montserrat(
                                    fontSize: 9, fontWeight: FontWeight.bold),
                              ),
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Ulasan",
                        style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 15),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(119, 119, 119, 0.25),
                                blurRadius: 0.5)
                          ],
                        ),
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            ListView.builder(
                              itemCount: 3,
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: const EdgeInsets.only(bottom: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Row(
                                              children: [
                                                CircleAvatar(
                                                  radius: 16,
                                                  backgroundImage: AssetImage(
                                                      "assets/unja.jpg"),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  "Kevin Hindra Jaya",
                                                  style: GoogleFonts.montserrat(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 11),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              SvgPicture.asset(
                                                "assets/star.svg",
                                                width: 17,
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
                                        height: 10,
                                      ),
                                      Text(
                                        "Wais ini pokoknya mantap travelnya, lu pada harus ikut dah. kalo ada duit. Kalau gada duit sini gw bayarin.",
                                        style: GoogleFonts.montserrat(
                                            fontSize: 9,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                            TextField(
                              style: GoogleFonts.montserrat(
                                  fontSize: 10,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.zero,
                                isDense: true,
                                hintText: "Masukan review kamu disini",
                                hintStyle: GoogleFonts.montserrat(
                                    fontSize: 10,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                                suffix: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.send_rounded,
                                    size: 15,
                                    color: Styles.lightBlue,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Styles.lightBlue),
                                  borderRadius: BorderRadius.circular(300),
                                ),
                                padding: const EdgeInsets.all(6),
                                child: Icon(Icons.remove_rounded,
                                    color: Styles.lightBlue),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "0 pax",
                              style: GoogleFonts.montserrat(
                                  color: Styles.lightBlue,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Styles.lightBlue),
                                    borderRadius: BorderRadius.circular(300),
                                    color: Styles.lightBlue),
                                padding: const EdgeInsets.all(6),
                                child: Icon(Icons.add_rounded,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed(
                                  TicketConfirmationScreen.routeName);
                            },
                            style: Styles.primaryButton,
                            child: Text(
                              'IDR 2.000.000',
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
