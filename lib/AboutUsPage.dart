import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatefulWidget {
  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 207, 217, 195),
      appBar: AppBar(
        title: Text('About_us').tr(),
        backgroundColor: Colors.lightGreen, // changed app bar color
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // added a profile picture
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/AboutUsPage.png'),
                  ),
                  SizedBox(height: 16),

                  Divider(
                      thickness: 2,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'User_intro',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold), // increased font size and added bold
                  ).tr(),
                  SizedBox(height: 8),
                  Text(
                    'welcome_message',
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.justify,
                  ).tr(),
                  SizedBox(height: 8),

                  Text(
                    'about_agriAid',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify,
                  ).tr(),
                  SizedBox(height: 8),

                  
                  Text(
                    'feature',
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.justify,
                  ).tr(),
                  SizedBox(height: 10),
                  Text(
                    'closing_message',
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.justify,
                  ).tr(),
                  // added a divider
                  Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 16),
                  // added a footer text
                  Text(
                    'Copyright 2025 AgriAid INDIA. All rights reserved.',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}