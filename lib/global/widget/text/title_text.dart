import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class TitleText extends StatelessWidget {
  const TitleText({required this.value, super.key, this.color});
  final String value;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: context.general.textTheme.displaySmall,
    );
  }
}

class PersonTitleText extends StatelessWidget {
  const PersonTitleText({required this.value, super.key, this.color});
  final String value;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: context.general.textTheme.titleMedium
          ?.copyWith(color: color, fontWeight: FontWeight.bold),
    );
  }
}

class WelcomeTitleText extends StatelessWidget {
  const WelcomeTitleText({required this.value, super.key, this.color});
  final String value;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: context.general.textTheme.displayMedium,
    );
  }
}
