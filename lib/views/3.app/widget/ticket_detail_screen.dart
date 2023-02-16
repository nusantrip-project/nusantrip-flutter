import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          "1 dari 5",
          style: GoogleFonts.montserrat(
              color: Colors.white, fontWeight: FontWeight.w500),
        ),
        titleSpacing: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_outline_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              "assets/unja.jpg",
              width: double.infinity,
              height: 260,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 15,
            ),
            Row()
          ],
        ),
      ),
    );
  }
}
