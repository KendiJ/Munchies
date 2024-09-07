import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:munchie_game/presentation/app_routes.dart';

enum PlayerState { idle, running }

class HomeScreen extends Component with HasGameRef {
  SpriteComponent background = SpriteComponent();
  SpriteComponent munchie = SpriteComponent();
  SpriteComponent arrowGo = SpriteComponent();
  final double _munchieScale = 0.14;

  @override
  Future<void> onLoad() async {
    super.onLoad();
    final size = gameRef.size;
    

    add(
      background
        ..sprite = await Sprite.load('background/BGT_1.png')
        ..size = size,
    );

    munchie
      ..sprite = await Sprite.load('munchies/MunchieGoesOut.png')
      ..anchor = Anchor.center
      ..position = Vector2(size.x * 0.45,  size.y * 0.4)
      ..size = Vector2(size.x * _munchieScale , size.y * _munchieScale * 2.0 );
    add(munchie);

    arrowGo
      ..sprite = await Sprite.load('buttons/Arrow_go.png')
      ..position = Vector2(size.x - 150, size.y - 100)
      ..size = Vector2(90, 70);
    add(arrowGo);
  }
}

class ArrowGo extends SpriteComponent
    with TapCallbacks, HasGameReference<AppRoutes> {
  ArrowGo() : super(
    size: Vector2(80, 80),
  );
  @override
  void onTapUp(TapUpEvent event) => game.router.pushNamed('fence');
}

