// ignore_for_file: public_member_api_docs, type_annotate_public_apis, inference, inference_failure_on_function_invocation, lines_longer_than_80_chars

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  void dismissKeyboard() {
    final currentFocus = FocusScope.of(this);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }

  void showSnackBar(SnackBar snackBar) {
    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }

  Future<void> cupertinoDialog({
    required Widget widget,
    bool barrierDismissible = true,
  }) async {
    await showCupertinoDialog(
      barrierDismissible: barrierDismissible,
      context: this,
      builder: (_) => widget,
    );
  }
}
