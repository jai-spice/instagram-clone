import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instagram_clone/common/widgets/index.dart';

import '../widgets/index.dart';
import 'login.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (MediaQuery.of(context).size.width >= 732) ...[
                  Container(
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.white, border: Border.all(width: 16)),
                    height: 578,
                  ),
                  const SizedBox(width: 32),
                ],
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    LoginForm(),
                    InstagramCard(
                      width: 350,
                      child: Center(
                        child: Text("Don't have an account? Sign up"),
                      ),
                    ),
                    SizedBox(height: 16),
                    AppLinks()
                  ],
                ),
              ],
            ),
            const SizedBox(height: 32),
            const FooterTags()
          ],
        ),
      ),
    );
  }
}
