// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:firstcabs/pages/loginpage.dart';
import 'package:flutter/material.dart';

class getstarted extends StatefulWidget {
  const getstarted({super.key});

  @override
  State<getstarted> createState() => _getstartedState();
}

class _getstartedState extends State<getstarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center, 
            children: [
              const Spacer(),
              const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "First",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Cabs",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Padding(
                padding:const EdgeInsets.only(bottom: 40),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.black,
                    textStyle: const TextStyle(fontWeight: FontWeight.bold)
                  ),
                  onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => loginpage()),
                  );
                }, child: const Text("Get Started")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
