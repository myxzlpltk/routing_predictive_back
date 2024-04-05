import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen A')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Screen A'),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: () => context.go("/books"),
              child: const Text("To Screen B"),
            ),
          ],
        ),
      ),
    );
  }
}
