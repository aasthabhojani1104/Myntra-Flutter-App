import 'package:flutter/material.dart';
import 'package:myntra_ui/features/home_page/product_card/product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
         return ProductGrid();
  }
}
