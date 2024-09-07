import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'presentation/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Flame.device.fullScreen();
  Flame.device.setLandscape();

  AppRoutes game = AppRoutes();
  runApp(GameWidget(game: kDebugMode ? AppRoutes() : game));
}
