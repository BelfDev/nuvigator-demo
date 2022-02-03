import 'package:flutter/material.dart';
import 'package:nuvigator_demo/widgets/sample_page_content.dart';

class SampleBPage extends StatelessWidget {
  const SampleBPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SamplePageContent(
      label: 'B',
      color: Colors.yellow,
    );
  }
}
