import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'flappy_dash_game.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late FlappyDashGame _flappyDashGame;

  @override
  void initState() {
    _flappyDashGame = FlappyDashGame();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GameWidget(
        game: _flappyDashGame,
        backgroundBuilder: (context) {
          return Container(color: Colors.amber);
        },
      ),
    );
  }
}
