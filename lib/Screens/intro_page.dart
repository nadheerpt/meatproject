import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_page.dart';


class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80,left: 40,right: 40,bottom: 40),
                  child: Image.asset(
                    "assets/logo.png",
                    height: 200,
                    width: 200,
                  ),
                ),
                Text("We deliver fresh meats at your doorstep",
                  textAlign: TextAlign.center,
                  style:
                  TextStyle(fontSize: 40,fontWeight: FontWeight.bold, ),),
                SizedBox(
                  height: 10,
                ),
                Text("Fresh items everyday",
                  textAlign: TextAlign.center,
                  style:
                  TextStyle(fontSize: 15,fontWeight: FontWeight.bold, ),),
                Spacer(),
                // get started button
                GestureDetector(
                  onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage();
                      },
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.green ,
                    ),
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                        color: Colors.white,
                        // fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Spacer()

              ],
            ),
          ),
        ),
    );
  }
}