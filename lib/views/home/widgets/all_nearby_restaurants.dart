import 'package:flutter/material.dart';

class AllNearbyRestaurants extends StatelessWidget {
  const AllNearbyRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('AllNearbyRestaurants'),
      ),
      body: const Center(
        child: Text('AllNearbyRestaurants'),
      ),
    );
  }
}
