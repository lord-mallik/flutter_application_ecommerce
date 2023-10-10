import 'package:flutter/cupertino.dart';
import 'package:flutter_application_ecommerce/Model/Tools/Color/color.dart';

class CustomTextStyle {
  final CustomColors colors = CustomColors();

  late TextStyle bodyNormal = TextStyle(
    fontFamily: 'CustomFont', // Use the name specified in pubspec.yaml
    fontSize: 20, color: colors.blackColor,
  );

  late TextStyle bodySmall = TextStyle(
    fontFamily: 'CustomFont',
    fontSize: 14,
    color: colors.captionColor,
  );

  late TextStyle titleLarge = TextStyle(
    fontFamily: 'CustomFont',
    fontSize: 30,
    color: colors.blackColor,
    fontWeight: FontWeight.bold,
  );
}
