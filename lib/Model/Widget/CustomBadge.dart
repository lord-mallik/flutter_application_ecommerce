import 'package:flutter/material.dart';

class CustomBadge extends StatelessWidget {
  final Color? badgeColor;
  final Color? textColor;
  final String? text;
  final VoidCallback? onPress;
  final TextStyle? textStyle;
  final Widget? child;
  final IconData? icon;
  final Color? iconColor;
  final Widget? badgeContent;
  final Color? badgeBackgroundColor;
  final Color? activeColor;
  final Color? inActive;

  CustomBadge({
    this.badgeColor,
    this.textColor,
    this.text,
    this.onPress,
    this.textStyle,
    this.child,
    this.icon,
    this.iconColor,
    this.badgeContent,
    this.badgeBackgroundColor,
    this.activeColor,
    this.inActive,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: badgeColor,
          ),
          child: text != null && textStyle != null && textColor != null
              ? Text(
            text!,
            style: textStyle!.copyWith(color: textColor),
          )
              : Container(),
        ),
        Positioned.fill(child: child!),
        if (onPress != null && icon != null && iconColor != null)
          Positioned(
            right: 0,
            top: 0,
            child: GestureDetector(
              onTap: onPress,
              child: Icon(
                icon,
                color: iconColor,
              ),
            ),
          ),
        if (badgeContent != null)
          Positioned(
            right: 0,
            top: 0,
            child: badgeContent!,
          ),
      ],
    );
  }
}
