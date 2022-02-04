import 'package:flutter/material.dart';
import 'package:bob/ui/counter/widgets/counter_body.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Stack(
        children: [
          const CounterBody(),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () => Navigator.of(context).pushNamed('/about'),
                child: const Text('About'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}