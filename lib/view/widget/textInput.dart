import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  const CustomField({Key? key, required this.labelText,    this.obscureText, required this.onChanged, }) : super(key: key);

  final String labelText;
   final bool? obscureText ;
   final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        onChanged: onChanged,
        obscureText: obscureText!,
        decoration:  InputDecoration(
          labelText: labelText,
        ),
      ),
    );
  }
}
