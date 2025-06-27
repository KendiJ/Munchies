import 'package:flame/game.dart';
import 'screens/fence_screen.dart';
import 'screens/home_screen.dart';
import 'screens/splash_screen.dart';

class AppRoutes extends FlameGame {
  late final RouterComponent router;

  @override
  Future<void> onLoad() async {
    add(
      router = RouterComponent(
        routes: {
          'splash_screen': Route(SplashScreen.new),
          'home_screen': Route(HomeScreen.new),
          'fence': Route(FenceScreen.new),
        },
        initialRoute: 'splash_screen',
      ),
    );
  }
}
