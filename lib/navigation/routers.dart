import 'package:nuvigator/next.dart';
import 'package:nuvigator_demo/navigation/routes.dart';

class MainRouter extends NuRouter {
  @override
  String get initialRoute => RoutePaths.home;

  @override
  List<NuRoute<NuRouter, Object, Object>> get registerRoutes => [
        HomeRoute(),
        SampleARoute(),
        SampleBRoute(),
        SampleCRoute(),
        SampleDRoute(),
      ];
}
