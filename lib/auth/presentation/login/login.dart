import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/common/constants/colors.dart';
import 'package:instagram_clone/common/widgets/index.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InstagramCard(
      width: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 91,
            child: Center(
              child: Image.asset(
                'images/logo.png',
                height: 51,
              ),
            ),
          ),
          const SizedBox(height: 24),
          const InputWidget(
              hintText: 'Phone number, username or email address'),
          const SizedBox(height: 6),
          const InputWidget(hintText: 'Password'),
          const SizedBox(height: 12),
          SizedBox(
            height: 30,
            child: ElevatedButton(
              onPressed: null,
              style: ElevatedButton.styleFrom(
                  disabledBackgroundColor: Colors.blue.shade100,
                  disabledForegroundColor: Colors.white,
                  textStyle: const TextStyle(fontWeight: FontWeight.bold)),
              child: const Text('Log In'),
            ),
          ),
          const SizedBox(height: 12),
          const LabeledDivider(label: 'OR'),
          const SizedBox(height: 12),
          TextButton.icon(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor: const Color(0xFF4267B2),
            ),
            icon: const Icon(FontAwesomeIcons.squareFacebook),
            label: const Text(
              'Log in with Facebook',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 12),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor: const Color(0xFF4267B2),
            ),
            child: const Text('Forgotten your password?'),
          )
        ],
      ),
    );
  }
}
