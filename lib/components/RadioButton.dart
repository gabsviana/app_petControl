import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({Key key}) : super(key: key);

  @override
  _RadioButtonState createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  String userChoice;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("Macho",style: GoogleFonts.balsamiqSans(
        color: Colors.black, fontSize: 18)),
        Radio(
            value: "m",
            groupValue: userChoice,
            onChanged: (String choice) {
              setState(() {
                userChoice = choice;
              });
            }),
        SizedBox(width: 100),
        Text("Fêmea",style: GoogleFonts.balsamiqSans(
            color: Colors.black, fontSize: 18)),
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
