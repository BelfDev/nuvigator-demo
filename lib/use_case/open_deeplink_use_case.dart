import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';
import 'package:nuvigator_demo/navigation/routes.dart';
import 'package:nuvigator_demo/use_case/use_case_spec.dart';

class OpenDeepLinkUseCase extends UseCaseSpec {
  OpenDeepLinkUseCase({
    this.pushMethod = DeepLinkPushMethod.Push,
  }) : super('Open deeplink');

  final DeepLinkPushMethod pushMethod;

  @override
  Future<void> execute(BuildContext context) async {
    // Retrieve [Nuvigator] from [BuildContext]
    final nuvigator = Nuvigator.of(context);
    // Push [SampleARoute] via deeplink url (can also be the path name).
    nuvigator.open(
      RoutePaths.sampleB,
      pushMethod: pushMethod,
    );
  }
}
