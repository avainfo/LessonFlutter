import 'package:flutter/material.dart';
import 'package:my_first_application/utils/AppSize.dart';
import 'package:my_first_application/widgets/home_page/back_button.dart';
import 'package:my_first_application/widgets/home_page/button_spacer.dart';
import 'package:my_first_application/widgets/home_page/sign_in_button.dart';
import 'package:my_first_application/widgets/home_page/sign_up_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF181920),
      body: SafeArea(
        child: Container(
          height: context.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const TopBackButton(),
              const MainIcon(),
              FormInputField(placeholder: "First name", isObscured: false),
              const ButtonSpacer(),
              FormInputField(placeholder: "Last name", isObscured: false),
              const ButtonSpacer(),
              FormInputField(placeholder: "Email", isObscured: false),
              const ButtonSpacer(),
              FormInputField(placeholder: "Password", isObscured: true),
              const ButtonSpacer(),
              const SignUpButton(),
              const SignInButton(),
            ],
          ),
        ),
      ),
    );
  }
}






class MainIcon extends StatelessWidget {
  const MainIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height / 14 * 4,
      width: context.width,
      child: Center(
        child: const Icon(
          Icons.account_circle_rounded,
          color: const Color(0xFF5B5C68),
          size: 150,
        ),
      ),
    );
  }
}

class FormInputField extends StatelessWidget {
  var isObscured = false;
  var placeholder = "";

  FormInputField({super.key,required this.placeholder, required this.isObscured});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width / 1.2,
      decoration: BoxDecoration(
        color: const Color(0xFF5B5C68),
        borderRadius: BorderRadius.circular(15),
      ),
      height: MediaQuery.of(context).size.height / 14,
      child: TextFormField(
        obscureText: isObscured,
        cursorColor: const Color(0xFFA6A6AD),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          hintText: placeholder,
          focusColor: const Color(0xFF495BFF),
          hoverColor: const Color(0xFF495BFF),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: const Color(0xFF495BFF),
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
