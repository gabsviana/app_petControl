import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app_pet_control/components/FormComponent.dart';
import 'package:app_pet_control/Screens/add_pet/addPetScreen.dart';

class CreateAccount extends StatelessWidget {
  CreateAccount({Key key}) : super(key: key);

  final TextEditingController _controllerNome = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueAccent, elevation: 0),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 32, bottom: 32),
                    child: Align(
                      child: Text(
                        "Criar Conta",
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
                    height: MediaQuery.of(context).size.height * 0.81,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Bem-Vindo!",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.balsamiqSans(
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                            )),
                        SizedBox(height: 50),
                        FormComponent(
                          titulo: Text("Nome",
                              style: GoogleFonts.balsamiqSans(
                                  color: Colors.grey.shade700, fontSize: 20)),
                          icon: Icon(Icons.person),
                          hintText: "Insira seu Nome",
                          controller: _controllerNome,
                          obscureText: false,
                          keyboard: TextInputType.name,
                        ),
                        SizedBox(height: 30),
                        FormComponent(
                          titulo: Text("E-mail",
                              style: GoogleFonts.balsamiqSans(
                                  color: Colors.grey.shade700, fontSize: 20)),
                          icon: Icon(Icons.email),
                          hintText: "Insira seu E-mail",
                          controller: _controllerEmail,
                          obscureText: false,
                          keyboard: TextInputType.emailAddress,
                        ),
                        SizedBox(height: 30),
                        FormComponent(
                          titulo: Text(
                            "Senha",
                            style: GoogleFonts.balsamiqSans(
                                color: Colors.grey.shade700, fontSize: 20),
                          ),
                          obscureText: true,
                          controller: _controllerSenha,
                          hintText: "Insira sua Senha",
                          icon: Icon(Icons.lock),
                          keyboard: TextInputType.text,
                        ),
                        SizedBox(height: 50),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FormAddPet(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(right: 16, left: 16),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: Colors.blueAccent.shade400,
                                  borderRadius: BorderRadius.circular(15)),
                              padding: EdgeInsets.all(8),
                              child: Center(
                                child: Text(
                                  "Criar Conta",
                                  style: GoogleFonts.balsamiqSans(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          // Positioned(top: -120,right: -20,
          //   child: Container(
          //    width: MediaQuery.of(context).size.width * 0.3,
          //     height: MediaQuery.of(context).size.height * 0.3,
          //    decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),
          //   ),),
        ],
      ),
    );
  }
}
