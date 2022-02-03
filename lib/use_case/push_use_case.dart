import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';
import 'package:nuvigator_demo/navigation/routes.dart';
import 'package:nuvigator_demo/use_case/use_case_spec.dart';

class PushUseCase extends UseCaseSpec {
  PushUseCase() : super('Push Route');

  @override
  Future<void> execute(BuildContext context) async {
    // Retrieve [Nuvigator] from [BuildContext]
    final nuvigator = Nuvigator.of(context);
    // Retrieve the desired [Route] via [Nuvigator.router]
    final route = nuvigator.router.getRoute(deepLink: RoutePaths.sampleA);
    // Use [Navigator] API via [Nuvigator] to push by [Route]
    nuvigator.push(route);
  }
}
