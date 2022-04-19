import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool tapped = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
            vertical: 12.0,
          ),
          child: Column(
            children: [
              Expanded(
                child: SizedBox(),
              ),
              Expanded(
                child: Image.asset('assets/images/login_image.jpg'),
                flex: 4,
              ),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          "Welcome $name",
                          style: GoogleFonts.lato(
                            color: Colors.indigo[800],
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              decoration:
                                  InputDecoration(labelText: "Username"),
                              onChanged: (inp) {
                                setState(() {
                                  name = inp;
                                });
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "*_*";
                                } else {
                                  return null;
                                }
                              },
                            ),
                            TextFormField(
                              decoration:
                                  InputDecoration(labelText: "Password"),
                              obscureText: true,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "*_*";
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                      flex: 2,
                    ),
                    GestureDetector(
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: tapped ? 50 : 125,
                        height: 50,
                        alignment: Alignment.center,
                        child: tapped
                            ? Icon(
                                Icons.check,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                        decoration: BoxDecoration(
                          color: tapped
                              ? Colors.greenAccent[700]
                              : Colors.indigo[800],
                          borderRadius: BorderRadius.circular(tapped ? 50 : 8),
                        ),
                      ),
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          setState(() {
                            tapped = true;
                          });
                          Future.delayed(Duration(seconds: 1), () {
                            Navigator.pushNamed(context, MyRoutes.homeRoute);
                          });
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content:
                                  Text("Enter valid username and password!")));
                        }
                      },
                    ),
                  ],
                ),
                flex: 6,
              ),
              Expanded(
                child: SizedBox(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
