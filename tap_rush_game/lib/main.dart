import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const TapRushApp());
}

class TapRushApp extends StatelessWidget {
  const TapRushApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tap Rush',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tap Rush')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.touch_app, size: 72),
              const SizedBox(height: 16),
              const Text(
                'Tap the target before time runs out.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 32),
              FilledButton.icon(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (_) => const GameScreen(),
                    ),
                  );
                },
                icon: const Icon(Icons.play_arrow),
                label: const Text('Start 30s round'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  static const _roundSeconds = 30;

  final _random = Random();
  int _score = 0;
  int _secondsLeft = _roundSeconds;
  Timer? _timer;
  Offset? _targetPosition;
  bool _roundOver = false;

  @override
  void initState() {
    super.initState();
    _startRound();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startRound() {
    _timer?.cancel();
    setState(() {
      _score = 0;
      _secondsLeft = _roundSeconds;
      _roundOver = false;
      _targetPosition = null;
    });
    _spawnTarget();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!mounted) return;
      if (_secondsLeft <= 1) {
        timer.cancel();
        setState(() {
          _secondsLeft = 0;
          _roundOver = true;
          _targetPosition = null;
        });
        return;
      }
      setState(() => _secondsLeft--);
    });
  }

  void _spawnTarget() {
    if (_roundOver) return;
    setState(() {
      _targetPosition = Offset(
        0.15 + _random.nextDouble() * 0.7,
        0.2 + _random.nextDouble() * 0.55,
      );
    });
  }

  void _onTargetTap() {
    if (_roundOver) return;
    setState(() => _score++);
    _spawnTarget();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tap Rush — Round')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final target = _targetPosition;
          return Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Score: $_score', style: Theme.of(context).textTheme.titleLarge),
                    Text('Time: $_secondsLeft s', style: Theme.of(context).textTheme.titleLarge),
                  ],
                ),
              ),
              if (!_roundOver && target != null)
                Positioned(
                  left: target.dx * constraints.maxWidth - 36,
                  top: target.dy * constraints.maxHeight - 36,
                  child: GestureDetector(
                    onTap: _onTargetTap,
                    child: Container(
                      width: 72,
                      height: 72,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 8,
                            offset: Offset(0, 4),
                            color: Colors.black26,
                          ),
                        ],
                      ),
                      child: const Icon(Icons.adjust, color: Colors.white, size: 40),
                    ),
                  ),
                ),
              if (_roundOver)
                Center(
                  child: Card(
                    margin: const EdgeInsets.all(24),
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Time\'s up!', style: Theme.of(context).textTheme.headlineSmall),
                          const SizedBox(height: 8),
                          Text('Final score: $_score', style: Theme.of(context).textTheme.titleMedium),
                          const SizedBox(height: 24),
                          FilledButton(
                            onPressed: _startRound,
                            child: const Text('Play again'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: const Text('Back to home'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
