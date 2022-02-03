import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';
import 'package:nuvigator_demo/navigation/routes.dart';
import 'package:nuvigator_demo/use_case/use_case_spec.dart';

class PushNamedUseCase extends UseCaseSpec {
  PushNamedUseCase() : super('Push Named Route');

  @override
  Future<void> execute(BuildContext context) async {
    // Retrieve [Nuvigator] from [BuildContext]
    final nuvigator = Nuvigator.of(context);
    // Push [SampleARoute] via the name of its path
    nuvigator.pushNamed(RoutePaths.sampleA);
  }
}
