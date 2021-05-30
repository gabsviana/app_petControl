
import 'package:app_pet_control/Screens/CreateAccountScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splashscreen/splashscreen.dart';

class FirstScreen extends StatefulWidget {
   FirstScreen({Key key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
         children:[
           SplashScreen(
               seconds: 5,
               navigateAfterSeconds: SecondView(),
             useLoader: true,
             loaderColor: Colors.blueAccent.shade700),
           Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               SvgPicture.asset(
                 "assets/PetControlLogo.svg",
                 height: MediaQuery.of(context).size.height * 0.7,
                 color: Colors.grey.shade800,
               ),
             ],
           ),],
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
            SizedBox(height: 80),
            GestureDetector(
              onTap: () {
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.65,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blueAccent.shade700),
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
              child: Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  border: Border.all(color: Colors.blueAccent.shade700, width: 3),
                ),
                child: Center(
                  child: Text(
                    "Criar Conta",
                    style: GoogleFonts.mulish(
                        color: Colors.blueAccent.shade700,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAccount(),));
              },
            ),
          ],
        ),
      ),
    ));
  }

}
