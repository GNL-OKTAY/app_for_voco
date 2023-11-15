// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    this.color,
    this.width,
    // this.borderColor = KThemeColor.transparent,
    this.child,
    this.borderRadius,
    // this.border,
    this.padding,
    this.gradient,
    this.enableShadow = true,
    // this.shadowColor,
    this.margin,
  });

  final Color? color;
  final double? width;
  // final Border? border ;
  // final Color borderColor;
  final Widget? child;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? padding;
  final Gradient? gradient;
  final bool enableShadow;
  // final Color shadowColor;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        gradient: gradient,
        color: color,
        borderRadius: borderRadius ?? BorderRadius.circular(20),
        boxShadow: enableShadow == true
            ? [
                BoxShadow(
                  color: context.general.colorScheme.shadow,
                  blurRadius: 6,
                  // offset: const Offset(3, 3), // changes position of shadow
                ),
              ]
            : null,
      ),
      child: child,
    );
  }
}
