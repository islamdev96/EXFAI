import 'package:flutter/material.dart';

// Define a model class to represent the data you want to search
class Book {
  final String title;
  final String author;
  final String description;

  Book({
    required this.title,
    required this.author,
    required this.description,
  });
}

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  List<Book> _books = []; // Your list of books

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _searchController,
          onChanged: _onSearchTextChanged,
          decoration: const InputDecoration(
            hintText: 'Search...',
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: _books.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_books[index].title),
            subtitle: Text(_books[index].author),
            onTap: () {
              // Handle item tap
            },
          );
        },
      ),
    );
  }

  void _onSearchTextChanged(String searchText) {
    // Implement your search logic here
    List<Book> filteredBooks = _books.where((book) {
      return book.title.toLowerCase().contains(searchText.toLowerCase()) ||
          book.author.toLowerCase().contains(searchText.toLowerCase()) ||
          book.description.toLowerCase().contains(searchText.toLowerCase());
    }).toList();

    setState(() {
      _books = filteredBooks;
    });
  }
}
