import 'package:flutter/material.dart';

class ExecriseContent2 extends StatelessWidget {
  const ExecriseContent2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      
      body: const Center(
        child: Text(
          '2nd Execrise',
          style: TextStyle(
            fontSize: 40
          ),
        ),
      ),
    );
  }
}