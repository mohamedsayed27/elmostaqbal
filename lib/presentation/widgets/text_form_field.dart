import 'package:flutter/material.dart';

class DefaultTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType keyboardType;
  final bool isPassword;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Function(String? value) validate;

  const DefaultTextFormField({Key? key, required this.controller, required this.hintText, required this.keyboardType, required this.isPassword, this.suffixIcon, this.prefixIcon, required this.validate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context),
      borderRadius: BorderRadius.circular(10)
    );
    return TextFormField(
      controller: controller,
      cursorColor: Colors.black,
      cursorHeight: 22,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: Color(0xff6E6E6E),fontFamily: 'Din'),
          border: inputBorder,
          focusedBorder: inputBorder,
          enabledBorder: inputBorder,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          filled: true,
          fillColor: const Color(0xffF2F3F8),
          contentPadding: const EdgeInsets.symmetric(vertical: 10)
      ),
      validator: (val){
        return validate(val);
      },
      keyboardType: keyboardType,
      obscureText: isPassword,
    );
  }
}