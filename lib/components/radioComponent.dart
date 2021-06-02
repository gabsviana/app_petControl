import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RadioComponent extends StatefulWidget {
  const RadioComponent({Key key}) : super(key: key);

  @override
  _RadioComponentState createState() => _RadioComponentState();
}

class _RadioComponentState extends State<RadioComponent> {
  String userChoice;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("Macho",
            style: GoogleFonts.balsamiqSans(color: Colors.black, fontSize: 18)),
        Radio(
            value: "m",
            groupValue: userChoice,
            onChanged: (String choice) {
              setState(() {
                userChoice = choice;
              });
            }),
        SizedBox(width: 100),
        Text("Fêmea",
            style: GoogleFonts.balsamiqSans(color: Colors.black, fontSize: 18)),
        Radio(
            value: "f",
            groupValue: userChoice,
            onChanged: (String choice) {
              setState(() {
                userChoice = choice;
              });
            })
      ],
    );
  }
}
