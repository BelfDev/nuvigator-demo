import 'package:flutter/material.dart';
import 'package:nuvigator_demo/widgets/sample_page_content.dart';

class SampleAPage extends StatelessWidget {
  const SampleAPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SamplePageContent(
      label: 'A',
      color: Colors.blue,
    );
  }
}
