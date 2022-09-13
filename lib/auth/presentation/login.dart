import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instagram_clone/common/widgets/index.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                LoginForm(),
                InstagramCard(
                  width: 350,
                  child: Center(
                    child: Text("Don't have an account? Sign up"),
                  ),
                ),
                AppLinks()
              ],
            ),
          ),
          Container(
            height: 128,
            margin: const EdgeInsets.only(bottom: 52.0),
          )
        ],
      ),
    );
  }
}

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
            ElevatedButton(onPressed: () {}, child: const Text('app store')),
            const SizedBox(width: 10),
            ElevatedButton(onPressed: () {}, child: const Text('play store')),
          ],
        )
      ],
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InstagramCard(
      width: 350,
      height: 396,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 131,
            child: Center(
              child: Image.asset(
                'images/logo.png',
                height: 51,
              ),
            ),
          ),
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
        ],
      ),
    );
  }
}
