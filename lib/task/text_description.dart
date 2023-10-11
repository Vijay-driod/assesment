import 'package:flutter/material.dart';


class ContainerWithRows extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: const Column(
        children: [
          Row(
            children: [
              Text('Puff Sleeve Eyelet Mini Dress',
                style: TextStyle(
                  fontSize: 18,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 100),
              Image(image: AssetImage('assets/heart_icon.png'))
            ],
          ),
          SizedBox(height: 8), // Add some spacing between rows
          Row(
            children: [
              Text('AED XX,XXX',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Text('AED XX,XXX',
                style: TextStyle(
                  fontSize: 12,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              SizedBox(width: 4),
              Text('(XX% OFF)',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
