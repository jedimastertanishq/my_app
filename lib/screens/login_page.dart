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
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Expanded(
                child: SizedBox(),
                flex: 2,
              ),
              Expanded(
                child: Image.asset('assets/images/login_image.jpg'),
                flex: 8,
              ),
              Expanded(
                child: Text(
                  "Login Page",
                  style: GoogleFonts.spaceMono(
                    color: Colors.blueAccent,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                flex: 4,
              ),
              Expanded(
                child: SizedBox(),
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
