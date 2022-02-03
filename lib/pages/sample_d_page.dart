import 'package:flutter/material.dart';
import 'package:nuvigator_demo/widgets/sample_page_content.dart';

class SampleDPage extends StatelessWidget {
  const SampleDPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SamplePageContent(
      label: 'D',
      color: Colors.brown,
    );
  }
}
