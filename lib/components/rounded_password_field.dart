import 'package:flutter/material.dart';
import 'package:login_page/components/text_field_container.dart';
import 'package:login_page/container.dart';

class RoundedPasswordField extends StatefulWidget {
  ValueChanged<String> onChanged;
  RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
      obscureText: _obscureText,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: TextButton(
            onPressed: _toggle,
            child: Icon(
              Icons.visibility,
              color: kPrimaryColor,
            ),
          ),
          border: InputBorder.none),
    ));
  }
}
