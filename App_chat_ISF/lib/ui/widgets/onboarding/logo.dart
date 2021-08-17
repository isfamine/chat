//@dart=2.3
import 'package:flutter/material.dart';
import 'package:app_chat/theme.dart';

class Logo extends StatelessWidget {
  const Logo();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: isLightTheme(context)
            ? Image.asset('assets/logo_light.png', fit: BoxFit.fill)
            : Image.asset('assets/logo_dark.png', fit: BoxFit.fill));
  }
}