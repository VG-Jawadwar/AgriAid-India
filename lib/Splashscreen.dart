import 'package:agriaid_india/Onboarding.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
void initState(){
  Future.delayed(const Duration(seconds: 3),(){
    Navigator.pushReplacement(context, 
    
    MaterialPageRoute(builder: 
    (context)=>Onboarding()
    ));

  });
}

  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFF143601),
      
      body: Center(
        child: Container(
          
          height: 300,
          width: 150,
          child:Image.asset("assets/splash screen image.png", 
        fit: BoxFit.contain,
        )
        
        ),
      ),
    );;
  }
}