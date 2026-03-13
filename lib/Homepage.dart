// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:agriaid_india/CentralSectorScheme.dart';
import 'package:agriaid_india/CentrallySponcered.dart';
import 'package:agriaid_india/KrishonnatiYojana.dart';
import 'package:flutter/material.dart';
import 'package:agriaid_india/Onboarding.dart';
import 'package:easy_localization/easy_localization.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
            ),
            SchemeCard(
              text: 'Central_Sector_Schemes'.tr(),
              backgroundImage: 'assets/img1.jpg',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  CentralSectorScheme(), // Replace with your next page widget
                  ),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            SchemeCard(
              text: 'Centrally_Sponsored_Schemes'.tr(),
              backgroundImage: 'assets/img2.png',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  CentrallySponcered(), // Replace with your next page widget
                  ),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            SchemeCard(
              text: 'Centrally_Sponsored_Schemes_kri'.tr(),
              backgroundImage: 'assets/img3.jpeg',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  KrishonnatiYojana(), // Replace with your next page widget
                  ),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Certified by\nMinistry of Agriculture & Farmers Welfare \nGov. of INDIA 2025.\nAgriAid INDIA',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 0, 0, 0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SchemeCard extends StatelessWidget {
  final String text;
  final String backgroundImage;
  final VoidCallback onTap;

  const SchemeCard({
    required this.text,
    required this.backgroundImage,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Center(
        child: SizedBox(
          height: 200,
          width: 350,
          child: InkWell(
            onTap: onTap,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(30, 29, 29, 0.494),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 5), // changes position of shadow
                  ),
                ],
                image: DecorationImage(
                  image: AssetImage(backgroundImage), // Use backgroundImage for each card
                  fit: BoxFit.cover,
                ),
              ),
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(124, 0, 0, 0),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(10),
                child: Text(
                  text,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
