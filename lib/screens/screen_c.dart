import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  const ScreenC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen C')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Screen C'),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: () async {
                final result = await showDialog<String>(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("Dialog"),
                    content: const Text("This is a dialog"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop("Dialog closed"),
                        child: const Text("Close"),
                      ),
                    ],
                  ),
                );
                if (result == null) return;
                if (!context.mounted) return;
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(result)));
              },
              child: const Text("Open Dialog"),
            ),
          ],
        ),
      ),
    );
  }
}
