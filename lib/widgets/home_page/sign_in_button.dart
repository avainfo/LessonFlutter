import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_application/utils/AppSize.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.5,
      height: MediaQuery.of(context).size.height / 28,
      child: Center(
        child: RichText(
          textScaleFactor: context.textScaleFactore,
          text: TextSpan(
            style: TextStyle(
              fontSize: 15,
            ),
            children: [
              TextSpan(
                text: "Have an account ? ",
                style: GoogleFonts.roboto(
                  color: const Color(0xFF5B5C68),
                ),
              ),
              TextSpan(
                text: "Sign In",
                style: GoogleFonts.roboto(
                  color: const Color(0xFF495BFF),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
