import 'package:flutter/material.dart';

class SamplePageContent extends StatelessWidget {
  const SamplePageContent({
    @required this.label,
    @required this.color,
    this.onNextPressed,
    Key key,
  }) : super(key: key);

  final String label;
  final Color color;
  final VoidCallback onNextPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.withOpacity(0.25),
      appBar: AppBar(
        title: Text('Page $label'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Sample $label page',
              style: const TextStyle(fontSize: 24.0),
            ),
            if (onNextPressed != null)
              ElevatedButton(
                onPressed: onNextPressed,
                child: const Text('Next'),
              ),
          ],
        ),
      ),
    );
  }
}
