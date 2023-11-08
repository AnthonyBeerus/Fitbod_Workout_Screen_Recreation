import 'package:flutter/material.dart';

class ExecriseContent3 extends StatelessWidget {
  const ExecriseContent3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: const Center(
        child: Text(
          '3rd Execrise',
          style: TextStyle(
            fontSize: 40
          ),
        ),
      ),
    );
  }
}