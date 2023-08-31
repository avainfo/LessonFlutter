import 'package:flutter/material.dart';

class TopBackButton extends StatelessWidget {
  const TopBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 14,
      child: Row(
        children: [
          Icon(
            Icons.chevron_left_rounded,
            size: 50,
            color: const Color(0xFF5B5C68),
          ),
          Text(
            "Sign Up",
            style: TextStyle(
                fontSize: 25,
                color: const Color(0xFF5B5C68),
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
