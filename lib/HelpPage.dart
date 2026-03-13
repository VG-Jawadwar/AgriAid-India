// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HelpPage extends StatefulWidget {
  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help').tr(),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align text to the left
            children: [
              // Header
              Text(
                'help_support'.tr(),
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightGreen),
              ),
              SizedBox(height: 16),

              Divider(
                thickness: 1,
                color: Color.fromARGB(255, 159, 160, 159),
              ),
              SizedBox(height: 16),

              // FAQ Section
              Text(
                'faq',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ).tr(),
              SizedBox(height: 8),
              ListTile(
                leading: Text('Q:'),
                title: Text(
                  'login_question',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ).tr(),
              ),
              ListTile(
                leading: Text('A:'),
                title: Text(
                    'login_answer').tr(),
              ),
              SizedBox(height: 8),
              ListTile(
                leading: Text('Q:'),
                title: Text(
                  'sign_up_question',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ).tr(),
              ),
              ListTile(
                leading: Text('A:'),
                title: Text(
                    'sign_up_answer').tr(),
              ),
              SizedBox(height: 16),

              // Contact Us Section
              Text(
                'contact_us',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ).tr(),
              SizedBox(height: 8),
              Text(
                'contact_us_desc',
                style: TextStyle(fontSize: 16),
              ).tr(),
              SizedBox(height: 8),
              ListTile(
                leading: Icon(Icons.email),
                title: Text('Email: vgjawadwar5@gmail.com'),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('Phone: (+91) 9209018008'),
              ),
              SizedBox(height: 16),
              Divider(
                thickness: 1,
                color: Color.fromARGB(255, 159, 160, 159),
              ),
              SizedBox(height: 16),

              // Footer
              Text(
                'Copyright 2025 AgriAid INDIA. All rights reserved.',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
