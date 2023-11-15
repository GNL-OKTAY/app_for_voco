import 'package:flutter/cupertino.dart';

class DialogMessage extends StatelessWidget {
  final String text;
  const DialogMessage({
    Key? key,
    this.text = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Column(
        children: [
          Text(text),
        ],
      ),
    );
  }
}
