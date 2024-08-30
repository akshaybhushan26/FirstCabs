// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Container(
                  height: 3,
                  width: 185,
                  decoration: const BoxDecoration(color: Colors.green),
                ),
                const SizedBox(height: 80),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    cursorColor: Colors.green,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            color: Colors.green,
                          )),
                      labelText: 'Full Name',
                      labelStyle: const TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    cursorColor: Colors.green,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            color: Colors.green,
                          )),
                      labelText: 'Mobile No.',
                      labelStyle: const TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    cursorColor: Colors.green,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            color: Colors.green,
                          )),
                      labelText: 'Email',
                      labelStyle: const TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    obscureText: true,
                    style: const TextStyle(color: Colors.white),
                    cursorColor: Colors.green,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            color: Colors.green,
                          )),
                      labelText: 'Password',
                      labelStyle: const TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    obscureText: true,
                    style: const TextStyle(color: Colors.white),
                    cursorColor: Colors.green,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            color: Colors.green,
                          )),
                      labelText: 'Re-Enter Password',
                      labelStyle: const TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.black,
                          textStyle:
                              const TextStyle(fontWeight: FontWeight.bold)),
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Text("Sign Up"),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 114),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 2,
                        width: 50,
                        decoration: const BoxDecoration(color: Colors.white),
                      ),
                      const Text(
                        " OR ",
                        style: TextStyle(color: Colors.white),
                      ),
                      Container(
                        height: 2,
                        width: 50,
                        decoration: const BoxDecoration(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                //Login WitH Google
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 53.4,
                  width: 267,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                              elevation: 1,
                              padding:EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                      child: Image.asset(
                        'lib/icons/Google.jpeg',
                        fit: BoxFit.fitWidth,
                      )
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}