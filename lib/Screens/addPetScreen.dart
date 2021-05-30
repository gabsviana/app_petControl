import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app_pet_control/components/TextFormField.dart' as textFormField;
import 'package:app_pet_control/components/RadioButton.dart' as radioButton;

class FormAddPet extends StatefulWidget {
  FormAddPet({Key key}) : super(key: key);

  @override
  _FormAddPetState createState() => _FormAddPetState();
}

class _FormAddPetState extends State<FormAddPet> {
  final TextEditingController _controllerNome = TextEditingController();

  DateTime _date = DateTime.now();
  bool verificadorData = false;
  bool _checkBox = false;

  Future<Null> _selectDate(BuildContext context) async {
    DateTime _datePicker = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: DateTime(2000),
        lastDate: DateTime(2022));

    if (_datePicker != null && _datePicker != _date) {
      setState(() {
        _date = _datePicker;
        verificadorData = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.blueAccent, elevation: 0),
        body: SingleChildScrollView(
            child: Container(
                decoration: BoxDecoration(color: Colors.blueAccent),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Padding(
                    padding: EdgeInsets.only(left: 32, bottom: 32),
                    child: Align(
                      child: Text(
                        "Perfil do Pet",
                        style: GoogleFonts.balsamiqSans(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 24, right: 32, left: 32),
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                "Para continuar, precisamos de algumas informações sobre seu animalzinho",
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.balsamiqSans(
                                  color: Colors.grey.shade700,
                                  fontSize: 21,
                                  fontWeight: FontWeight.w500,
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 32, bottom: 8),
                              child: Align(
                                child: Container(
                                  padding: EdgeInsets.all(24),
                                  child: Center(
                                      child: Icon(
                                    Icons.add,
                                    size: 70,
                                    color: Colors.white,
                                  )),
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.lightBlue.shade400),
                                ),
                                alignment: Alignment.center,
                              ),
                            ),
                            Center(
                                child: Text(
                              "Foto de Perfil",
                              style: GoogleFonts.balsamiqSans(
                                color: Colors.grey.shade700,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            )),
                            SizedBox(height: 50),
                            textFormField.TexFormField(
                              hintText: "Insira o nome do seu pet",
                              controller: _controllerNome,
                              obscureText: false,
                              hintStyle: TextStyle(
                                  fontSize: 16, color: Colors.grey.shade600),
                              keyboard: TextInputType.name,
                              titulo: Text("Nome do Pet",
                                  style: GoogleFonts.balsamiqSans(
                                      color: Colors.grey.shade700,
                                      fontSize: 20)),
                            ),
                            SizedBox(height: 30),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  child: Text(
                                    "Data de Nascimento do Pet",
                                    style: GoogleFonts.balsamiqSans(
                                        color: Colors.grey.shade700,
                                        fontSize: 20),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _selectDate(context);
                                    });
                                  },
                                  child: Container(
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Colors.blueGrey.shade100),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            verificadorData != false
                                                ? "${_date.day}/${_date.month}/${_date.year}"
                                                : "Selecione a Data",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.grey.shade600),
                                          ),
                                          Icon(
                                            Icons.calendar_today,
                                            color: Colors.lightBlue,
                                          )
                                        ],
                                      )),
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                      value: _checkBox,
                                      onChanged: (value) {
                                        setState(() {
                                          _checkBox = !_checkBox;
                                        });
                                      },
                                    ),
                                    Text(
                                      "Não sei",
                                      style: GoogleFonts.balsamiqSans(
                                          color: Colors.black),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Text(
                                "Sexo Do pet",
                                style: GoogleFonts.balsamiqSans(
                                    color: Colors.grey.shade700, fontSize: 20),
                              ),
                            ),
                            radioButton.RadioButton()
                          ])),
                ]))));
  }
}
