import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../ui/widgets/widgets.dart';

class SetUpScreen extends StatelessWidget {
  const SetUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Set up account')),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/ui/intro_jungle_bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const IntroLogoWidget(),
              const SizedBox(height: 120),
              IntroButtonWidget(
                text: 'I have a recovery Phrase',
                onPressed: () => context.push('/inputphrase'),
              ),
              const SizedBox(height: 30),
              IntroButtonWidget(
                text: 'Generate new wallet',
                onPressed: () => context.push('/generatePhrase'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}