// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last

import 'package:agriaid_india/Login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:easy_localization/easy_localization.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300.0, // Set the height of the container
              width: double.infinity, // Make the container full width

              child: Image.asset(
                'assets/onboarding.png', // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Welcome to',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
                color: Color(0xff245501),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "AgriAid\n   INDIA",
              style: TextStyle(
                fontSize: 35,
                height: 1.2,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
                color: Color(0xff245501),
              ),
            ),
            SizedBox(
              height: 80,
            ),

            Column(
              children: [
                Center(
                  child: SizedBox(
                    width: 300,
                    height: 55,
                    child: ElevatedButton(
                      child: Text(
                        "Log In",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.normal),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff528D22),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Center(
                  child: SizedBox(
                    width: 300,
                    height: 55,
                    child: OutlinedButton(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Color.fromARGB(255, 41, 57, 28),
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      onPressed: () {

                        ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content: Text(
                                      'Oops! Module is under Development...',
                                      style: TextStyle(color: Colors.red),
                                    )),
                                  );

                        ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content: Text(
                                      'Please Continue with Default Login...',
                                      style: TextStyle(color: Colors.yellow),
                                    )),
                                  );
                      },
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          color: Color(0xff538D22),
                          width: 2.0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
            // Add other widgets below
          ],
        ),
      ),
    );
  }
}
