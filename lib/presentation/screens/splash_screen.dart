import 'package:flame/components.dart';
import 'package:flame/events.dart';

import '../app_routes.dart';

class SplashScreen extends Component
    with TapCallbacks, HasGameRef<AppRoutes> {
  SpriteComponent splash = SpriteComponent();
  @override
  Future<void> onLoad() async {
    super.onLoad();
    final size = gameRef.size;

    add(
      SpriteComponent(
        sprite: await Sprite.load('splash/munchie_splash.png'),
        size: size
      ),
    );
  }

  @override
  bool containsLocalPoint(Vector2 point) => true;

  @override
  void onTapUp(TapUpEvent event) => game.router.pushNamed('home_screen');
}
