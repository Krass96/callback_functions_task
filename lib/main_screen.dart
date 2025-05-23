import 'package:callback_functions/input_counter_box.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  final void Function(int)? summeofLengths;

  const MainScreen({super.key, this.summeofLengths});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _length = 0;

  void _incrementLength() {
    setState(() {
      _length++;
    });
    widget.summeofLengths?.call(_length);
  }

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
                _incrementLength();
              },
            ),
            InputCounterBox(
              color: Colors.greenAccent,
              onLengthChanged: (text) {
                debugPrint('Box 2 wurde verändert');
                _incrementLength();
              },
            ),
            InputCounterBox(
              color: Colors.deepOrangeAccent,
              onLengthChanged: (text) {
                debugPrint('Box 3 wurde verändert');
                _incrementLength();
              },
            ),
            Text('Summe aller Längen: $_length'),
          ],
        ),
      ),
    );
  }
}
