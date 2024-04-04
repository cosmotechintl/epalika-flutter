import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  List<String> items;
  final ValueChanged<String?> onChanged;
  DropDown({super.key, required this.items, required this.onChanged});
  @override
  State<DropDown> createState() => _DropDownState(items);
}

class _DropDownState extends State<DropDown> {
  List<String> items;
  String? dropDownValue;

  _DropDownState(this.items);

  @override
  void initState() {
    dropDownValue = items.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFEEEEEE),
      child: DropdownButtonFormField(
        decoration: InputDecoration(
          labelText: 'Place of Birth',
          border: OutlineInputBorder(),
        ),
        dropdownColor: Color(0xFFEEEEEE),
        items: items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Padding(
                padding: EdgeInsets.fromLTRB(5.0,1.0,0.0,0.0),
            child: Text(value)
            ),
          );
        }).toList(),
        onChanged: (String? value) {
          setState(() {
            dropDownValue = value;
          });
          widget.onChanged(value);
        },
      ),
    );
  }
}
