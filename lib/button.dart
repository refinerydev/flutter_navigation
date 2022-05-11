import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Elevated Button Back'),
            ),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Outlined Button Back'),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Text Button Back'),
            ),
          ],
        ),
      ),
    );
  }
}
