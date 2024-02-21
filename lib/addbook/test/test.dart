import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../all_export.dart';

class AddBookPage extends StatefulWidget {
  const AddBookPage({super.key});

  @override
  _AddBookPageState createState() => _AddBookPageState();
}

class _AddBookPageState extends State<AddBookPage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _authorController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  Future<void> _addBook() async {
    final Uri url = Uri.parse(AppLink.addbookAdd);
    final Map<String, String> requestBody = {
      'addbook_title': _titleController.text,
      'addbook_description': _descriptionController.text,
      'addbook_author': _authorController.text,
      'addbook_city': _cityController.text,
      'addbook_price': _priceController.text,
    };

    final response = await http.post(url, body: requestBody);
    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);
      if (responseData['status'] == 'success') {
        print('Product added successfully');
        // You can navigate to another screen or show a success message here
      } else {
        print('Failed to add product');
        // Handle error here, show error message to user
      }
    } else {
      print(
          'Failed to add product. Server returned status code ${response.statusCode}');
      // Handle error here, show error message to user
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: _descriptionController,
              decoration: const InputDecoration(labelText: 'Description'),
            ),
            TextField(
              controller: _authorController,
              decoration: const InputDecoration(labelText: 'Author'),
            ),
            TextField(
              controller: _cityController,
              decoration: const InputDecoration(labelText: 'City'),
            ),
            TextField(
              controller: _priceController,
              decoration: const InputDecoration(labelText: 'Price'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _addBook,
              child: const Text('Add Product'),
            ),
          ],
        ),
      ),
    );
  }
}
