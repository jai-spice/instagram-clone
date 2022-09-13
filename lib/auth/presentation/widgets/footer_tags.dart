import 'dart:html' as html;

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class FooterTags extends StatelessWidget {
  const FooterTags({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.6,
      child: DefaultTextStyle(
        style: const TextStyle(fontSize: 12, color: Colors.grey),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Wrap(
              spacing: 16,
              runSpacing: 8,
              alignment: WrapAlignment.center,
              children: const [
                LinkText(
                  'Meta',
                  url: "https://www.google.com",
                ),
                LinkText(
                  'About',
                  url: "https://www.google.com",
                ),
                LinkText(
                  'Blog',
                  url: "https://www.google.com",
                ),
                LinkText(
                  'Jobs',
                  url: "https://www.google.com",
                ),
                LinkText(
                  'Help',
                  url: "https://www.google.com",
                ),
                LinkText(
                  'API',
                  url: "https://www.google.com",
                ),
                LinkText(
                  'Privacy',
                  url: "https://www.google.com",
                ),
                LinkText(
                  'Terms',
                  url: "https://www.google.com",
                ),
                LinkText(
                  'Top Accounts',
                  url: "https://www.google.com",
                ),
                LinkText(
                  'Hashtags',
                  url: "https://www.google.com",
                ),
                LinkText(
                  'Locations',
                  url: "https://www.google.com",
                ),
                LinkText(
                  'Instagram Lite',
                  url: "https://www.google.com",
                ),
                LinkText(
                  'Contact uploading and non-users',
                  url: "https://www.google.com",
                ),
                LinkText(
                  'Dance',
                  url: "https://www.google.com",
                ),
                LinkText(
                  'Food & drink',
                  url: "https://www.google.com",
                ),
                LinkText(
                  'Home & garden',
                  url: "https://www.google.com",
                ),
                LinkText(
                  'Music',
                  url: "https://www.google.com",
                ),
                LinkText(
                  'Visual Arts',
                  url: "https://www.google.com",
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text('''English (UK)  © 2022 Instagram from Meta'''),
          ],
        ),
      ),
    );
  }
}

class LinkText extends StatelessWidget {
  final String text;
  final String url;
  const LinkText(this.text, {super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: text,
          style: const TextStyle(fontSize: 12, color: Colors.grey),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              if (kIsWeb) {
                html.window.open(url, 'new tab');
              }
            }),
    );
  }
}
