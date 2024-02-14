import 'package:flutter/material.dart';

class CustomCardHome extends StatelessWidget {
  final String title;
  final String imageUrl;

  const CustomCardHome({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          Center(
            child: imageUrl.isNotEmpty
                ? Image.asset(
                    imageUrl,
                    width: 35,
                    height: 35,
                  )
                : const Placeholder(
                    fallbackHeight: 35,
                    fallbackWidth: 35,
                  ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
