import 'package:flutter/material.dart';

class CustomDropdownSearchCity extends StatefulWidget {
  final String? title;
  final TextEditingController dropdownSelectedName;
  final List<String> citiesList;
  final TextEditingController dropdownSelectedID;

  const CustomDropdownSearchCity({
    super.key,
    this.title,
    required this.citiesList,
    required this.dropdownSelectedName,
    required this.dropdownSelectedID,
  });

  @override
  State<CustomDropdownSearchCity> createState() =>
      _CustomDropdownSearchCityState();
}

class _CustomDropdownSearchCityState extends State<CustomDropdownSearchCity> {
  String? _selectedCity; // المدينة المحددة
  final TextEditingController _searchController = TextEditingController();

  void showDropdownSearch() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(widget.title!),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _searchController,
                decoration: const InputDecoration(
                  hintText: 'ابحث عن مدينة...',
                ),
                onChanged: (value) {
                  setState(() {
                    // يقوم بتحديث الواجهة عند تغيير النص في حقل البحث
                  });
                },
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: _filteredCities.length,
                  itemBuilder: (BuildContext context, int index) {
                    final city = _filteredCities[index];
                    return ListTile(
                      title: Text(city),
                      onTap: () {
                        setState(() {
                          _selectedCity = city;
                          widget.dropdownSelectedName.text = city;
                        });
                        Navigator.pop(context);
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  List<String> get _filteredCities {
    if (_searchController.text.isEmpty) {
      return widget.citiesList;
    } else {
      return widget.citiesList
          .where((city) =>
              city.toLowerCase().contains(_searchController.text.toLowerCase()))
          .toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Text(
            widget.title!,
            style: const TextStyle(fontSize: 18.0, color: Colors.black),
          ),
        ),
        Center(
          child: TextFormField(
            controller: widget.dropdownSelectedName,
            cursorColor: Colors.grey,
            onTap: () {
              FocusScope.of(context).unfocus();
              showDropdownSearch();
            },
            decoration: InputDecoration(
              hintText: widget.dropdownSelectedName.text == ""
                  ? widget.title
                  : widget.dropdownSelectedName.text,
              hintStyle: const TextStyle(fontSize: 14),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              suffixIcon: InkWell(
                onTap: () {
                  showDropdownSearch();
                },
                child: const Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: Colors.grey,
                  size: 30,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(40.0),
              ), // Remove border
              filled: true, // Fill background color
              fillColor: Colors.grey[200], // Set bacground color
            ),
          ),
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomDropdownSearchCity(
              title: 'اختر مدينتك',
              dropdownSelectedName: TextEditingController(),
              dropdownSelectedID: TextEditingController(),
              citiesList: citiesList,
            ),
          ],
        ),
      ),
    ),
  ));
}

final List<String> citiesList = [
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
