import 'package:flutter/material.dart';

import './product.dart';

import 'widgets/hobby_card.dart';
import 'widgets/button_card.dart';
import 'widgets/product_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('My Hobbie')),
        body: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HobbyCard(
                title: "Travelling",
                icon: Icons.travel_explore,
                backgroundColor: Colors.red,
              ),

              SizedBox(height: 20),
              HobbyCard(
                title: 'Skating',
                icon: Icons.skateboarding,
                backgroundColor: Colors.blueGrey,
              ),

              SizedBox(height: 50),

              ButtonCard(
                label: 'SCHOOL',
                icon: Icons.skateboarding,
                position: IconPosition.left,
                color: ColorType.primary,
              ),
              SizedBox(height: 20),

              ButtonCard(
                label: 'CAFETERIA',
                icon: Icons.skateboarding,
                position: IconPosition.right,
                color: ColorType.secondary,
              ),

              SizedBox(height: 20),

              ProductCard(product: Product.dart),
            ],
          ),
        ),
      ),
    );
  }
}
