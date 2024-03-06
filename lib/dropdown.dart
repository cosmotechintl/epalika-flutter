import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  List<String> items;
  DropDown({super.key, required this.items});
  @override
  State<DropDown> createState() => _DropDownState(items);
}

class _DropDownState extends State<DropDown> {
  List<String> items;
  _DropDownState(this.items);
  @override
  Widget build(BuildContext context) {
    String? dropDownValue = items.first;
    return DropdownButton(
      value: dropDownValue,
      items: items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? value) {
        setState(() {
          dropDownValue = value;
        });
      },
    );
  }
}
