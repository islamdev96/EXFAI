import 'dart:io';

import 'package:exfai/view/widget/home/page_app_bar.dart';
import 'package:image_picker/image_picker.dart';

import '../../all_export.dart';

class BookDetailsPage extends StatefulWidget {
  const BookDetailsPage({super.key});

  @override
  _BookDetailsPageState createState() => _BookDetailsPageState();
}

class _BookDetailsPageState extends State<BookDetailsPage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _authorController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _contactMethodController =
      TextEditingController();
  XFile? _image; // الصورة المحددة
  String? _selectedCity; // المدينة المحددة

  final List<String> _saudiMajorCities = [
    'الرياض',
    'جدة',
    'مكة المكرمة',
    'المدينة المنورة',
    'الدمام',
    'الأحساء',
    'الطائف',
    'بريدة',
    'تبوك',
    'القصيم',
    'خميس مشيط',
    'حائل',
    'نجران',
    'ابها',
    'ينبع',
    'الخبر',
    'عرعر',
    'سكاكا',
    'الجبيل'
  ];

  Future<void> _openGallery() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _image = XFile(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PageAppBar(),
            const CustomCardHome(
              title: "اعرض كتابك",
              imageUrl: 'assets/images/3.jfif',
            ),
            const SizedBox(height: 20.0),
            const Text(
              'عنوان الكتاب:',
              style: TextStyle(fontSize: 18.0, color: Colors.black),
            ),
            TextField(
              controller: _titleController,
              decoration: InputDecoration(
                hintText: 'أدخل عنوان الكتاب',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'مؤلف الكتاب:',
              style: TextStyle(fontSize: 18.0, color: Colors.black),
            ),
            TextField(
              controller: _authorController,
              decoration: InputDecoration(
                hintText: 'أدخل اسم المؤلف',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'تصنيف الكتاب:',
              style: TextStyle(fontSize: 18.0, color: Colors.black),
            ),
            DropdownButton<String>(
              value: 'تصنيف مثالي',
              onChanged: (String? newValue) {
                // Handle dropdown value change
              },
              items: <String>['تصنيف مثالي', 'تصنيف آخر'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'المدينة:',
              style: TextStyle(fontSize: 18.0, color: Colors.black),
            ),
            DropdownButtonFormField<String>(
              value: _selectedCity,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedCity = newValue;
                });
              },
              items: _saudiMajorCities.map((String city) {
                return DropdownMenuItem<String>(
                  value: city,
                  child: Text(city),
                );
              }).toList(),
              decoration: InputDecoration(
                hintText: 'اختر مدينتك',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'السعر:',
              style: TextStyle(fontSize: 18.0, color: Colors.black),
            ),
            TextField(
              controller: _priceController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'أدخل السعر',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'طريقة التواصل:',
              style: TextStyle(fontSize: 18.0, color: Colors.black),
            ),
            TextField(
              controller: _contactMethodController,
              decoration: InputDecoration(
                hintText: 'أدخل طريقة التواصل',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            InkWell(
              onTap: () {
                _openGallery();
              },
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                child: _image != null
                    ? Image.file(
                        File(_image!.path),
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      )
                    : const Icon(Icons.image),
              ),
            ),
            const SizedBox(height: 20.0),
            Center(
              child: Text(
                'عموله التطبيق ريالا فقط لدعم تطوير المنصه',
                style: TextStyle(
                  color: AppColor.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(350, 50),
                  backgroundColor: AppColor.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                clipBehavior: Clip.antiAlias,
                onPressed: () {
                  // Add book details to database
                },
                child: const Text(
                  'نشر الكتاب',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 50.0),
          ],
        ),
      ),
    );
  }
}
