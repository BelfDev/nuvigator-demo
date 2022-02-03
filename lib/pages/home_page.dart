import 'package:flutter/material.dart';
import 'package:nuvigator_demo/use_case/open_deeplink_use_case.dart';
import 'package:nuvigator_demo/use_case/push_named_use_case.dart';
import 'package:nuvigator_demo/widgets/use_case_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  static final _useCases = [
    PushNamedUseCase(),
    OpenDeepLinkUseCase(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuvigator Demo'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(24.0),
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        children: [
          ..._useCases.map(
            (useCase) => UseCaseCard(
              title: useCase.name,
              onPressed: () => useCase.execute(context),
            ),
          ),
        ],
      ),
    );
  }
}
