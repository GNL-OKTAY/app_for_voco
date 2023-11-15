import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kartal/kartal.dart';

class SubPersonText extends StatelessWidget {
  const SubPersonText(
      {super.key,
      required this.title,
      required this.value,
      required this.icon});
  final String title;
  final String value;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(5.w, 10.h, 10.w, 5.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          icon,
          const VerticalDivider(),
          Text(
            title,
            style: context.general.textTheme.titleSmall?.copyWith(),
          ),
          const Spacer(),
          Text(
            value,
            style: context.general.textTheme.bodyLarge?.copyWith(),
          )
        ],
      ),
    );
  }
}
