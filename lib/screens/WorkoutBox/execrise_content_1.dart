import 'package:flutter/material.dart';

class ExecriseContent1 extends StatelessWidget {
  const ExecriseContent1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: const Center(
        child: Text(
          '1st Execrise',
          style: TextStyle(
            fontSize: 40
          ),  
        ),
      ),
    );
  }
}