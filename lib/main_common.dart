import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';
import 'package:shop_order_app/flavor_config.dart';

import 'injection.dart';
import 'presentation/home_page.dart';

Future<void> mainCommon(Flavor flavor) async {
  WidgetsFlutterBinding.ensureInitialized();
  late FlavorConfig flavorConfig;

  switch (flavor) {
    case Flavor.dev:
      flavorConfig = FlavorConfig(
        appTitle: 'Orders App Development',
        color: Colors.pinkAccent,
      );
      await configureInjection(Environment.dev);
      break;
    case Flavor.test:
      flavorConfig = FlavorConfig(
        appTitle: 'Orders App Test',
        color: Colors.redAccent,
      );
      await configureInjection(Env.profile);
      break;
    case Flavor.prod:
      flavorConfig = FlavorConfig(
        appTitle: 'Orders App Production',
        color: Colors.white,
      );
      await configureInjection(Env.prod);
      break;
  }

  runApp(Provider.value(
    value: flavorConfig,
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}
