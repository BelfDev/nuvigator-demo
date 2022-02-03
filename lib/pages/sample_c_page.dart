import 'package:flutter/material.dart';
import 'package:nuvigator_demo/widgets/sample_page_content.dart';

class SampleCPage extends StatelessWidget {
  const SampleCPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SamplePageContent(
      label: 'C',
      color: Colors.green,
    );
  }
}
