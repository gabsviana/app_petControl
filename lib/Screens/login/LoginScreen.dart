import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:app_pet_control/components/FormComponent.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // FormKey para validação de formulario
  GlobalKey formKey = GlobalKey<FormState>();

  // TextEdittingControllers
  TextEditingController _userController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
              child: Container(
            color: Colors.blueAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 24, left: 32, bottom: 52),
                  child: Align(
                    child: Text(
                      "Login",
                      style: GoogleFonts.balsamiqSans(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.80,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 54, right: 32, left: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: "Bem-vindo de volta!\n\n",
                              style: GoogleFonts.balsamiqSans(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text: "Faça o login para continuar",
                              style: GoogleFonts.balsamiqSans(
                                  color: Colors.black54,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400),
                            ),
                          ]),
                        ),
                        Form(
                          key: formKey,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 24.0),
                                child: FormComponent(
                                  controller: _userController,
                                  titulo: Text(
                                    "E-mail",
                                    style: GoogleFonts.balsamiqSans(
                                        color: Colors.black54, fontSize: 16),
                                  ),
                                  hintText: "Insira seu e-mail",
                                  hintStyle: GoogleFonts.balsamiqSans(
                                      color: Colors.black54, fontSize: 14),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 24.0),
                                child: FormComponent(
                                  controller: _passwordController,
                                  titulo: Text(
                                    "Senha",
                                    style: GoogleFonts.balsamiqSans(
                                        color: Colors.black54, fontSize: 16),
                                  ),
                                  hintText: "Insira sua senha",
                                  hintStyle: GoogleFonts.balsamiqSans(
                                      color: Colors.black54, fontSize: 14),
                                  obscureText: true,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            child: Text(
                              "Esqueci minha senha!",
                              style: GoogleFonts.balsamiqSans(
                                  color: Colors.blue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () =>
                                ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Esqueci minha senha )-:"),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 54),
                          child: GestureDetector(
                            onTap: () => logMeIn(),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  "Login",
                                  style: GoogleFonts.balsamiqSans(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }

  // TODO: Jogar metodos como este em algum gerenciador de estado
  void logMeIn() {
    print("Usuario -> ${_userController.text}");
    print("Senha -> ${_passwordController.text}");
  }
}
