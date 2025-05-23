import 'package:callback_functions/input_counter_box.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 16,
          children: [
            InputCounterBox(
              color: Colors.amber,
              onLengthChanged: (text) {
                debugPrint('Box 1 wurde verändert');
              },
            ),
            InputCounterBox(
              color: Colors.greenAccent,
              onLengthChanged: (text) {
                debugPrint('Box 2 wurde verändert');
              },
            ),
            InputCounterBox(
              color: Colors.deepOrangeAccent,
              onLengthChanged: (text) {
                debugPrint('Box 3 wurde verändert');
              },
            ),
          ],
        ),
      ),
    );
  }
}
