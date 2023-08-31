import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_application/utils/AppSize.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFF495BFF),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: InkWell(
        onTap: () {
          if (kDebugMode) {
            print("test");
            print(View.of(context).padding.top);
            print(View.of(context).padding.top);
          }
        },
        borderRadius: BorderRadius.circular(25),
        splashColor: Color(0xFF000E7C),
        child: SizedBox(
          width: context.width / 1.2,
          height: MediaQuery.of(context).size.height / 14,
          child: Center(
            child: Text(
              "Sign up",
              textScaleFactor: context.textScaleFactore,
              style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}