import 'package:flutter/src/widgets/framework.dart';
import 'package:nuvigator/next.dart';
import 'package:nuvigator_demo/pages/home_page.dart';
import 'package:nuvigator_demo/pages/sample_a_page.dart';
import 'package:nuvigator_demo/pages/sample_b_page.dart';
import 'package:nuvigator_demo/pages/sample_c_page.dart';
import 'package:nuvigator_demo/pages/sample_d_page.dart';

class RoutePaths {
  RoutePaths._();

  static const home = 'home';
  static const sampleA = 'sample-a';
  static const sampleB = 'sample-b';
  static const sampleC = 'sample-c';
  static const sampleD = 'sample-d';
}

class HomeRoute extends NuRoute {
  @override
  String get path => RoutePaths.home;

  @override
  ScreenType get screenType => materialScreenType;

  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    return const HomePage();
  }
}

class SampleARoute extends NuRoute {
  @override
  String get path => RoutePaths.sampleA;

  @override
  ScreenType get screenType => materialScreenType;

  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    return const SampleAPage();
  }
}

class SampleBRoute extends NuRoute {
  @override
  String get path => RoutePaths.sampleB;

  @override
  ScreenType get screenType => materialScreenType;

  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    return const SampleBPage();
  }
}

class SampleCRoute extends NuRoute {
  @override
  String get path => RoutePaths.sampleC;

  @override
  ScreenType get screenType => materialScreenType;

  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    return const SampleCPage();
  }
}

class SampleDRoute extends NuRoute {
  @override
  String get path => RoutePaths.sampleD;

  @override
  ScreenType get screenType => materialScreenType;

  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    return const SampleDPage();
  }
}
