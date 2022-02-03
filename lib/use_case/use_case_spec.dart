import 'package:flutter/material.dart';

abstract class UseCaseSpec {
  const UseCaseSpec(this.name);

  final String name;

  Future<void> execute(BuildContext context);
}
