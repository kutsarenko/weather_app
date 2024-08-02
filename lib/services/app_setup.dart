import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'config.dart';

GetIt getIt = GetIt.instance;

class AppSetup {
  static final AppSetup _intstance = AppSetup._privateConstructor();

  AppSetup._privateConstructor();

  factory AppSetup() {
    return _intstance;
  }

  Future<void> setupServices() async {
    WidgetsFlutterBinding.ensureInitialized();
    final config = Config();
    await config.loadConfig();

    getIt.registerSingleton(config);
  }
}
