import 'package:flutter/material.dart';


class TexFormField extends StatelessWidget {
  const TexFormField(
      {Key key,
      this.hintText,
      this.icon,
      this.obscureText,
      this.controller,
      this.titulo, this.keyboard, this.hintStyle})
      : super(key: key);

  final String hintText;
  final Icon icon;
  final bool obscureText;
  final TextEditingController controller;
  final Text titulo;
  final TextInputType keyboard;
  final TextStyle hintStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: const EdgeInsets.only(bottom: 8), child: titulo),
        Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blueGrey.shade100),
            child: TextFormField(
              controller: controller,
              obscureText: obscureText,
              keyboardType: keyboard,
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: icon,
                hintText: hintText,
                hintStyle: hintStyle
              ),
            )),
      ],
    );
  }
}
