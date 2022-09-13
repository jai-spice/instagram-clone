import 'package:flutter/material.dart';
import 'package:instagram_clone/common/constants/colors.dart';

class InstagramCard extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;

  const InstagramCard(
      {super.key, required this.child, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: kBorderColor),
      ),
      child: child,
    );
  }
}
