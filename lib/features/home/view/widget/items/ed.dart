import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0), // المساحة الخارجية للبطاقة
      elevation: 4.0, // ارتفاع الظل
      shape: RoundedRectangleBorder(
        // شكل حواف البطاقة
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // محاذاة العناصر
        children: [
          Stack(
            alignment: Alignment.topRight, // محاذاة الزر في الزاوية اليمنى
            children: [
              const SizedBox(
                height: 200,
                width: double.infinity,
                child: Placeholder(), // استبدل هذا بصورة المنتج
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: FloatingActionButton(
                  onPressed: () {}, // إضافة وظيفة للزر
                  backgroundColor: Colors.blue,
                  child: const Icon(Icons.add),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "28499.00 EGP",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "خصم 9%  EGP 31490.00",
                  style: TextStyle(
                    color: Colors.red,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "عسل إلى حيواناتك \n تصل أيام 8 - خدم...",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
