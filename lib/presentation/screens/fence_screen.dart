import 'package:flame/components.dart';

class FenceScreen extends SpriteComponent with HasGameRef {
  SpriteComponent munchies = SpriteComponent();
  SpriteComponent background = SpriteComponent();

  @override
  Future<void> onLoad() async {
    super.onLoad();
    final size = gameRef.size;

    add(
      background
        ..sprite = await Sprite.load('background/BGT_1.png')
        ..size = size,
    );
  }
}
