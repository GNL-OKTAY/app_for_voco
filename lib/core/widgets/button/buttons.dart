import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kartal/kartal.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final bool isLoading;

  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    final borderRadius = context.border.lowBorderRadius;
    final gradient = LinearGradient(
      colors: [
        context.general.colorScheme.secondaryContainer.withOpacity(0.4),
        context.general.colorScheme.secondaryContainer
      ],
    );

    return Container(
      decoration: BoxDecoration(gradient: gradient, borderRadius: borderRadius),
      width: double.infinity,
      height: 50.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        onPressed: onPressed,
        child: isLoading
            ? const Center(child: CupertinoActivityIndicator())
            : Text(
                text,
                style: context.general.textTheme.titleLarge,
              ),
      ),
    );
  }
}

class CustomBlinkingButton extends StatefulWidget {
  const CustomBlinkingButton({
    required this.isExpanded,
    super.key,
  });

  final bool isExpanded;

  @override
  _CustomBlinkingButtonState createState() => _CustomBlinkingButtonState();
}

class _CustomBlinkingButtonState extends State<CustomBlinkingButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      lowerBound: 0.45,
      duration: const Duration(milliseconds: 600),
    );
    _animationController.repeat(reverse: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animationController,
      child: widget.isExpanded
          ? Text(
              "register_register.tr",
              // LocaleKeys.register_register.tr(),
              style: context.general.textTheme.bodyLarge,
            )
          : Text(
              "register_register.tr",
              // LocaleKeys.register_register.tr(),
              style: context.general.textTheme.bodyLarge,
            ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
