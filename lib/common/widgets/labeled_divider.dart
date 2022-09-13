import 'package:flutter/material.dart';

import '../constants/colors.dart';

class LabeledDivider extends StatelessWidget {
  final String label;
  const LabeledDivider({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(height: 1, width: 100, color: kBorderColor),
        Text(
          label,
          style: const TextStyle(
            color: Color(0xFFA0A0A0),
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(height: 1, width: 100, color: kBorderColor),
      ],
    );
  }
}
