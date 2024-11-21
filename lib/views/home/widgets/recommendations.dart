import 'package:flutter/material.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Recommendations'),
      ),
      body: const Center(
        child: Text('Recommendations'),
      ),
    );
  }
}
