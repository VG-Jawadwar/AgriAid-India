// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:math';

import 'package:agriaid_india/AboutUsPage.dart';
import 'package:agriaid_india/HelpPage.dart';
import 'package:agriaid_india/Homepage.dart';
import 'package:agriaid_india/Login.dart';
import 'package:agriaid_india/Onboarding.dart';
import 'package:agriaid_india/Schemes.dart';
import 'package:agriaid_india/Splashscreen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'dart:math';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_exit_app/flutter_exit_app.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedindex = 0;

  int value = 0;
  int? nullableValue;
  bool positive = true;
  bool loading = false;

  PageController pageController = PageController();

  void onTapped(int index) {
    setState(() {
      selectedindex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    const green = Color(0xFF45CC0D);

    return Scaffold(
      appBar: AppBar(
        title: Text('app_title').tr(),
        backgroundColor: Colors.green,

        actions: [
          Padding(
            padding: EdgeInsets.only(right: 7, top: 2, bottom: 2),
            child: AnimatedToggleSwitch<bool>.dual(
              current: positive,
              first: true,
              second: false,
              spacing: 17.0,

              animationDuration: const Duration(milliseconds: 600),
              style: const ToggleStyle(
                borderColor: Colors.transparent,
                indicatorColor: Colors.white,
                backgroundColor: Colors.black,
              ),
              customStyleBuilder: (context, local, global) {
                if (global.position <= 0.0) {
                  return ToggleStyle(backgroundColor: Colors.red[800]);
                }
                return ToggleStyle(
                    backgroundGradient: LinearGradient(
                  colors: [green, Colors.red[800]!],
                  stops: [
                    global.position -
                        (1 - 2 * max(0, global.position - 0.5)) * 0.7,
                    global.position + max(0, 2 * (global.position - 0.5)) * 0.7,
                  ],
                ));
              },
              borderWidth: 6.0,
              height: 40,

              loadingIconBuilder: (context, global) =>
                  CupertinoActivityIndicator(
                      color:
                          Color.lerp(Colors.red[800], green, global.position)),
              onChanged: (b) async {
                setState(() => positive = b);
                await context
                    .setLocale(b ? const Locale('en') : const Locale('mr'));
              },

            
              iconBuilder: (value) => value
                  ? const Icon(Icons.language, color: green, size: 25.0)
                  : Icon(Icons.translate_rounded,
                      color: Colors.red[800], size: 25.0),


              textBuilder: (b) => Center(
                child: Text(
                  b ? 'Marathi' : 'English',
                  style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          )
        ],

     
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 34, 126, 34),
                    Color.fromARGB(255, 8, 75, 4),
                  ],

                  begin: Alignment.topCenter, // start alignment

                  end: Alignment.bottomCenter, // end alignment
                ),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40.0, // increased radius to accommodate the border

                    backgroundColor:
                        Color.fromARGB(255, 2, 62, 8), // border color

                    child: CircleAvatar(
                      radius: 37.0,
                      backgroundImage: AssetImage('assets/AboutUsPage.png'),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'app_title',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ).tr(),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home').tr(),
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help').tr(),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HelpPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text('About_us').tr(),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutUsPage()));
              },
            ),
            ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.red,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.redAccent),
                ).tr(),
                onTap: () {
                  showDialog(
                      context: (context),
                      builder: (context) {
                        return AlertDialog(
                            title: Text(
                              "Logout",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ).tr(),
                            content: Text(
                              "logout_q",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.normal),
                            ).tr(),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    FlutterExitApp.exitApp();
                                  },
                                  child: Text(
                                    "Yes",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ).tr()),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    "No",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ).tr())
                            ]);
                      });
                }),

        

            SizedBox(
              height: 30,
            ),
            ListTile(
              title: Text(
                'Version 1.0\nCopyright 2025 AgriAid INDIA. All rights reserved.',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              onTap: null,
            ),
          ],
        ),
      ),
      body: PageView(
        controller: pageController,
        children: [
          Homepage(),
          Schemes(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Schemes',
          )
        ],
        currentIndex: selectedindex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: onTapped,
      ),
    );
  }

  Color colorBuilder(int value) => switch (value) {
        0 => Colors.blueAccent,
        1 => Colors.green,
        2 => Colors.orangeAccent,
        _ => Colors.red,
      };

  Widget coloredRollingIconBuilder(int value, bool foreground) {
    final color = foreground ? colorBuilder(value) : null;
    return Icon(
      iconDataByValue(value),
      color: color,
    );
  }

  Widget iconBuilder(int value) {
    return rollingIconBuilder(value, false);
  }

  Widget rollingIconBuilder(int? value, bool foreground) {
    return Icon(iconDataByValue(value));
  }

  IconData iconDataByValue(int? value) => switch (value) {
        0 => Icons.access_time_rounded,
        1 => Icons.check_circle_outline_rounded,
        2 => Icons.power_settings_new_rounded,
        _ => Icons.lightbulb_outline_rounded,
      };
}
