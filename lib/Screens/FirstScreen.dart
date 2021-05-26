import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatefulWidget {
   FirstScreen({Key key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () async{
            Future.delayed(Duration(seconds: 5)
            );
            Navigator.push(context, MaterialPageRoute(builder: (__) => SecondView()));
          },
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/PetControlLogo.svg",
                  height: MediaQuery.of(context).size.height * 0.7,
                  color: Colors.grey.shade800,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SecondView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/PetControlLogo.svg",
              height: MediaQuery.of(context).size.height * 0.4,
              color: Colors.grey.shade800,
            ),
            SizedBox(height: 60),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.65,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue),
                child: Center(
                    child: Text(
                      "Login",
                      style: GoogleFonts.mulish(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  border: Border.all(color: Colors.blue, width: 3),
                ),
                child: Center(
                  child: Text(
                    "Criar Conta",
                    style: GoogleFonts.mulish(
                        color: Colors.blue,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

}
