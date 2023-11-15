import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class AvareElevatedButton extends StatelessWidget {
  const AvareElevatedButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.borderRadius,
    this.width,
    this.height = 44.0,
    this.gradient,
  });
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double height;
  final Gradient? gradient;
  final VoidCallback? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? context.border.lowBorderRadius;
    final gradient = this.gradient ??
        LinearGradient(
          colors: [
            context.general.colorScheme.onSecondaryContainer,
            context.general.colorScheme.secondaryContainer
          ],
        );
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: borderRadius,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: child,
      ),
    );
  }
}
