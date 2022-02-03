import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';
import 'package:nuvigator_demo/navigation/routers.dart';
import 'package:nuvigator_demo/navigation/routes.dart';
import 'package:nuvigator_demo/pages/home_page.dart';
import 'package:nuvigator_demo/pages/sample_a_page.dart';
import 'package:nuvigator_demo/pages/sample_b_page.dart';
import 'package:nuvigator_demo/pages/sample_c_page.dart';
import 'package:nuvigator_demo/pages/sample_d_page.dart';

const _demoTitle = 'Nuvigator Demo';

void main() {
  // runApp(const NuvigatorSetupOptionOne());
  runApp(const NuvigatorSetupOptionTwo());
}

/// This option registers routes via [Nuvigator.routes] [NuRouteBuilder]
class NuvigatorSetupOptionOne extends StatelessWidget {
  const NuvigatorSetupOptionOne({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _demoTitle,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFAFAFA),
        primarySwatch: Colors.deepPurple,
      ),
      builder: Nuvigator.routes(
        initialRoute: RoutePaths.home,
        routes: [
          NuRouteBuilder(
            path: RoutePaths.home,
            screenType: materialScreenType,
            builder: (_, __, ___) => const HomePage(),
          ),
          NuRouteBuilder(
            path: RoutePaths.sampleA,
            screenType: materialScreenType,
            builder: (_, __, ___) => const SampleAPage(),
          ),
          NuRouteBuilder(
            path: RoutePaths.sampleB,
            screenType: materialScreenType,
            builder: (_, __, ___) => const SampleBPage(),
          ),
          NuRouteBuilder(
            path: RoutePaths.sampleC,
            screenType: materialScreenType,
            builder: (_, __, ___) => const SampleCPage(),
          ),
          NuRouteBuilder(
            path: RoutePaths.sampleD,
            screenType: materialScreenType,
            builder: (_, __, ___) => const SampleDPage(),
          ),
        ],
      ),
    );
  }
}

/// This option registers routes via [Nuvigator] and [NuRoute] extended classes.
///
/// See [MainRouter].
class NuvigatorSetupOptionTwo extends StatelessWidget {
  const NuvigatorSetupOptionTwo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _demoTitle,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFAFAFA),
        primarySwatch: Colors.deepPurple,
      ),
      home: Nuvigator(
        router: MainRouter(),
      ),
    );
  }
}
