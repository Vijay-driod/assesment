import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: TextListView(),
      ),
    );
  }
}

class TextListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
            child: const Row(
              children: [
                Image(image: AssetImage('assets/sale.png')),// Example child widgets
                SizedBox(width: 8.0),
                Text('Extra XX% OFF this item with code EXTRA10',
                style: TextStyle(
                color: Colors.red)), // Example child widgets
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(16, 4, 4, 4),
            child: const Row(
              children: [
                Image(image: AssetImage('assets/tabby.png')),// Example child widgets
                SizedBox(width: 8.0),
                Text('X interest-free installments of AED XXX.XX '), // Example child widgets
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(16, 4, 4, 4),
            child: const Row(
              children: [
                Image(image: AssetImage('assets/tamara.png')),// Example child widgets
                SizedBox(width: 8.0),
                Text('X interest-free installments of AED XXX.XX '), // Example child widgets
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(16, 4, 4, 4),
            child: const Row(
              children: [
                Image(image: AssetImage('assets/amber.png')),// Example child widgets
                SizedBox(width: 8.0),
                Text('Earn 800 Amber points '), // Example child widgets
              ],
            ),
          ),
          // Add more containers as needed
        ],
      ),
    );
  }
}
