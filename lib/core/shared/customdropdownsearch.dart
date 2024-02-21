import 'package:drop_down_list/drop_down_list.dart';
import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:flutter/material.dart';

class CustomDropdownSearch extends StatefulWidget {
  final String? title;
  final List<SelectedListItem> listdata;
  final TextEditingController dropdownSelectedName;
  final TextEditingController dropdownSelectedID;
  const CustomDropdownSearch(
      {super.key,
      this.title,
      required this.listdata,
      required this.dropdownSelectedName,
      required this.dropdownSelectedID});

  @override
  State<CustomDropdownSearch> createState() => _CustomDropdownSearchState();
}

class _CustomDropdownSearchState extends State<CustomDropdownSearch> {
  void showDropdownSearch() {
    DropDownState(
      DropDown(
        isDismissible: true,
        bottomSheetTitle: Text(
          widget.title!,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.red,
          ),
        ),
        submitButtonChild: const Text(
          'Done',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        data: widget.listdata ?? [],
        selectedItems: (List<dynamic> selectedList) {
          SelectedListItem selectedListItem = selectedList[0];
          widget.dropdownSelectedName.text = selectedListItem.name;
          widget.dropdownSelectedID.text = selectedListItem.value!;
        },
      ),
    ).showModal(context);
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.dropdownSelectedName,
      cursorColor: Colors.red,
      onTap: () {
        FocusScope.of(context).unfocus();
        showDropdownSearch();
      },
      decoration: InputDecoration(
          hintText: widget.dropdownSelectedName.text == ""
              ? widget.title
              : widget.dropdownSelectedName.text,
          counterStyle: const TextStyle(color: Colors.red),
          hintStyle: const TextStyle(fontSize: 14),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
          label: Container(
              margin: const EdgeInsets.symmetric(horizontal: 9),
              child: Text(
                widget.dropdownSelectedName.text == ""
                    ? widget.title!
                    : widget.dropdownSelectedName.text,
                style: const TextStyle(color: Colors.red),
              )),
          suffixIcon: InkWell(
              onTap: () {},
              child: const Icon(
                Icons.arrow_drop_down,
                color: Colors.red,
                size: 30,
              )),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
    );

    // decoration: InputDecoration(
    // filled: true,
    // fillColor: Colors.black12,
    // contentPadding:
    //    const EdgeInsets.only(left: 8, bottom: 0, top: 0, right: 15),
    //hintText:widget. dropdownSelectedName.text == ""?widget.title:widget.dropdownSelectedName.text,
    //border: const OutlineInputBorder(
    //  borderSide: BorderSide(
    //  width: 0,
    //   style: BorderStyle.none,
    //  ),
    // borderRadius: BorderRadius.all(
    //Radius.circular(8.0),
    //),
    // ),
    //),
    // );
  }
}