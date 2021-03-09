import 'package:flutter/material.dart';

class UseCustomFont extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Use a custom font'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Pokedex',
          style: TextStyle(
            fontFamily: 'Pokedex',
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0,
          ),
        ),
      ),
    );
  }
}
