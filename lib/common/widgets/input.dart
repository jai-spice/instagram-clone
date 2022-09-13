import 'package:flutter/material.dart';
import 'package:instagram_clone/common/constants/colors.dart';

class InputWidget extends StatelessWidget {
  final String? label;
  final String? hintText;
  const InputWidget({
    Key? key,
    this.label,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      width: 268,
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(9, 8, 7, 8),
          hoverColor: Colors.transparent,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kBorderColor),
            borderRadius: BorderRadius.circular(3),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(3),
          ),
          labelText: label,
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 12, color: Colors.grey),
          filled: true,
          fillColor: const Color(0xFFFAFAFA),
        ),
      ),
    );
  }
}
