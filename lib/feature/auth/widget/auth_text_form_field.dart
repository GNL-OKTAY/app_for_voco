import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthTextField extends StatefulWidget {
  final String? initialValue;
  final TextInputType? inputType;
  final double? height;
  final TextEditingController controller;
  final bool isObscure;
  final String? Function(String? text)? validator;
  final String? labelText;

  const AuthTextField({
    super.key,
    this.initialValue,
    this.inputType,
    this.height,
    this.labelText,
    required this.controller,
    this.isObscure = false,
    required this.validator,
  });

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SizedBox(
        child: TextFormField(
          autovalidateMode: AutovalidateMode.always,
          initialValue: widget.initialValue,
          controller: widget.controller,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
          obscureText: _passwordVisible,
          keyboardType: widget.inputType,
          decoration: InputDecoration(
            labelText: widget.labelText,
            labelStyle: const TextStyle(fontSize: 18),
            errorStyle: const TextStyle(fontSize: 10),
            contentPadding: EdgeInsets.symmetric(
              vertical: 2.5.h,
              horizontal: 10.0.w,
            ),
            suffixIcon: IconButton(
              padding: EdgeInsets.zero,
              icon: NewWidget(
                widget: widget,
                passwordVisible: _passwordVisible,
              ),
              onPressed: () {
                if (widget.isObscure == true) {
                  setState(() => _passwordVisible = !_passwordVisible);
                }
              },
            ),
          ),
          validator: widget.validator,
          onSaved: print,
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
    required this.widget,
    required bool passwordVisible,
  }) : _passwordVisible = passwordVisible;

  final AuthTextField widget;
  final bool _passwordVisible;

  @override
  Widget build(BuildContext context) {
    return Icon(
      widget.isObscure
          ? _passwordVisible
              ? Icons.visibility_off
              : Icons.visibility
          : null,
      color: Theme.of(context).primaryColorDark,
    );
  }
}
