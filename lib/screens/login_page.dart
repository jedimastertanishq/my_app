import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
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
                          "Welcome!",
                          style: GoogleFonts.lato(
                            color: Colors.indigo[800],
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(labelText: "Username"),
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: "Password"),
                            obscureText: true,
                          ),
                        ],
                      ),
                      flex: 2,
                    ),
                    ElevatedButton(
                      child: Text("Login"),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.indigo[800],
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        minimumSize: Size(125, 50),
                        textStyle: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                flex: 4,
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
