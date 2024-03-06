import '../../all_export.dart';

class CustomDropdownSearch extends StatefulWidget {
  final String? title;
  final TextEditingController dropdownSelectedName;
  final List<SelectedListItem> listdata;
  final TextEditingController dropdownSelectedID;

  const CustomDropdownSearch({
    super.key,
    this.title,
    required this.listdata,
    required this.dropdownSelectedName,
    required this.dropdownSelectedID,
  });

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
          ),
        ),
        data: widget.listdata,
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
