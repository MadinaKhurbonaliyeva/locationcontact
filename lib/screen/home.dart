import 'package:flutter/material.dart';
import 'package:location/screen/position.dart';
import 'package:location/screen/position_stream.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const MyPosition(),
                ),
              );
            },
            child: const Text('Current Position'),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const StreamPosition(),
                  ),
                );
              },
              child: const Text('Steam Position'))
        ],
      ),
    );
  }
}
