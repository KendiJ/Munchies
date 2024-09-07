import 'package:flame/game.dart';

import 'screens/home_screen.dart';
import 'screens/splash_screen.dart';

class AppRoutes extends FlameGame {
  late final RouterComponent router;

  @override
  Future<void> onLoad() async {
    add(
      router = RouterComponent(
        initialRoute: 'splash_screen',
        routes: {
          'splash_screen': Route(SplashScreen.new),
          'home_screen': Route(HomeScreen.new),
          // 'arrow_go': Route(),
        },
      ),
    );
  }
}
