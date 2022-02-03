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
      appBar: AppBar(
        title: Text('Page $label'),
        backgroundColor: color,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              'Sample page $label',
              style: const TextStyle(
                fontSize: 24.0,
                color: Colors.grey,
              ),
            ),
          ),
          if (onNextPressed != null)
            ElevatedButton(
              onPressed: onNextPressed,
              child: const Text('Next'),
            ),
        ],
      ),
    );
  }
}
