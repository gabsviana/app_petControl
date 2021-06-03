import 'package:flutter/material.dart';

class FormComponent extends StatelessWidget {
  const FormComponent(
      {Key key,
      this.hintText,
      this.icon,
      this.obscureText = false,
      this.controller,
      this.titulo,
      this.keyboard = TextInputType.multiline,
      this.hintStyle})
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
            validator: (value) {
              if (value.isEmpty) return "O Campo é Obrigatório";
              return null;
            },
            controller: controller,
            obscureText: obscureText,
            keyboardType: keyboard,
            decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: icon,
                hintText: hintText,
                hintStyle: hintStyle),
          ),
        ),
      ],
    );
  }
}
