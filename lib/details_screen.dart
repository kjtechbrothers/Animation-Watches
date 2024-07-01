import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String brandName;
  final String productImages;
  final int productPrice;

  const DetailsScreen({
    super.key,
    required this.brandName,
    required this.productImages,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Product Details',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF1B1F3B), // Navy Blue background
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: productImages,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.network(productImages),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              brandName,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white, // White text color
              ),
            ),
            const SizedBox(height: 20),
            Text(
              r'$' + productPrice.toString(),
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFFD700), // Gold accent color
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Detailed description of the product goes here.',
              style:  TextStyle(
                fontSize: 16,
                color: Color(0xFFB0B0B0), // Gray text color
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFF1B1F3B), // Navy Blue background
    );
  }
}
