import 'package:flutter/material.dart';

class ButtonSpacer extends StatelessWidget {
  const ButtonSpacer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 28,
    );
  }
}
