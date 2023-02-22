import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../styles/styles.dart';

class EditProfileScreen extends StatelessWidget {
  static const routeName = './editprofile';
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Profile",
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
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
              TextField(
                style: GoogleFonts.montserrat(fontSize: 14),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  label: const Text("First Name"),
                  hintText: "Benny Septiawan",
                  hintStyle: GoogleFonts.montserrat(fontSize: 14),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                style: GoogleFonts.montserrat(fontSize: 14),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  label: const Text("Last Name"),
                  hintText: "Salim",
                  hintStyle: GoogleFonts.montserrat(fontSize: 14),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: Styles.primaryButton,
                child: const Text(
                  'Edit Profil',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
