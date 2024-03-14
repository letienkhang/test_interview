import 'package:flutter/material.dart';

Widget appTextField({
  required BuildContext context,
  IconData iconData = Icons.email,
  String labelText = 'Username',
  String hintText = 'Username',
  String helperText = 'khang',
  bool obscureText = false,
  TextEditingController? usernameController,
}) {
  return Column(
    children: [
      TextField(
        controller: usernameController,
        style: _textStyle(context),
        obscureText: obscureText,
        decoration: InputDecoration(
            prefixIcon: Icon(
              iconData,
              size: 20,
            ),
            filled: true,
            fillColor: Theme.of(context).colorScheme.onPrimary,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.onSecondaryContainer,
                  width: 1.5),
              borderRadius: BorderRadius.circular(10.0),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            labelText: labelText,
            hintText: hintText,
            helperText: helperText,
            helperStyle: _helperStyle(context),
            hintStyle: _style(context),
            labelStyle: _style(context),
            suffixStyle: _style(context)),
      ),
    ],
  );
}

TextStyle _style(BuildContext context) {
  return Theme.of(context)
      .textTheme
      .titleSmall!
      .copyWith(color: Theme.of(context).colorScheme.secondary);
}

TextStyle? _textStyle(BuildContext context) {
  return Theme.of(context).textTheme.bodyMedium;
}

TextStyle? _helperStyle(BuildContext context) {
  return Theme.of(context).textTheme.bodyMedium;
}
