import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppLinks extends StatelessWidget {
  const AppLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Get the app.'),
        const SizedBox(height: 28),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StoreButton(
              label: 'App Store',
              onPressed: () {},
              pretext: 'Download on the',
              icon: FontAwesomeIcons.apple,
            ),
            const SizedBox(width: 10),
            StoreButton(
              label: 'Play Store',
              onPressed: () {},
              pretext: 'GET IT ON',
              icon: FontAwesomeIcons.googlePlay,
            ),
          ],
        )
      ],
    );
  }
}

class StoreButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final IconData icon;
  final String pretext;

  const StoreButton({
    Key? key,
    this.onPressed,
    required this.label,
    required this.icon,
    required this.pretext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,
        child: Material(
          elevation: 2.0,
          child: Container(
              padding: const EdgeInsets.only(right: 8.0),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4.0),
                    child: Icon(icon, color: Colors.white, size: 28),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        pretext,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 8),
                      ),
                      Text(
                        label,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            height: 0.95,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              )),
        ));
  }
}
