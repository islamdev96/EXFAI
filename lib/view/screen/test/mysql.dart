import 'package:mysql1/mysql1.dart';

Future<void> createBookTable() async {
  final conn = await MySqlConnection.connect(ConnectionSettings(
    host: 'localhost', // يمكنك استبدال localhost بعنوان الخادم إذا كان مختلفًا
    port: 3306, // يمكنك استبدال 3306 بالبورت المستخدم إذا كان مختلفًا
    user: 'u700906284_hamza',
    password: 'Islam253**',
    db: 'u700906284_hamza',
  ));

  await conn.query('''
    CREATE TABLE IF NOT EXISTS books (
      id INT AUTO_INCREMENT PRIMARY KEY,
      title VARCHAR(255) NOT NULL,
      author VARCHAR(255) NOT NULL,
      category VARCHAR(255) NOT NULL,
      city VARCHAR(255) NOT NULL,
      price DECIMAL(10, 2) NOT NULL,
      contact_method VARCHAR(255) NOT NULL
    )
  ''');

  await conn.close();
}

Future<void> addBookToDatabase(
  String title,
  String author,
  String category,
  String city,
  double price,
  String contactMethod,
) async {
  final conn = await MySqlConnection.connect(ConnectionSettings(
    host:
        "https://exfai.com/Hamza", // يمكنك استبدال localhost بعنوان الخادم إذا كان مختلفًا
    port: 3306, // يمكنك استبدال 3306 بالبورت المستخدم إذا كان مختلفًا
    user: 'u700906284_hamza',
    password: 'Islam253**',
    db: 'u700906284_hamza',
  ));

  await conn.query(
    'INSERT INTO books (title, author, category, city, price, contact_method) VALUES (?, ?, ?, ?, ?, ?)',
    [title, author, category, city, price, contactMethod],
  );

  await conn.close();
}

void mysql1Create() async {
  await createBookTable();

  await addBookToDatabase(
    'عنوان الكتاب',
    'اسم المؤلف',
    'تصنيف الكتاب',
    'المدينة',
    25.0,
    'طريقة التواصل',
  );
}
