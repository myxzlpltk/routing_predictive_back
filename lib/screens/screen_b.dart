import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen B')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Screen B'),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: () => context.go("/books/create"),
              child: const Text("To Screen C"),
            ),
          ],
        ),
      ),
    );
  }
}
