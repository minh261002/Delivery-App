import 'package:delivery_app/constants/constants.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('Category Page'),
          backgroundColor: kOffWhite,
        ),
        body: Center(
          child: Text('Category Page'),
        ));
  }
}
