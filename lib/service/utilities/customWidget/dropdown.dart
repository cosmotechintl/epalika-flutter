import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  List<String> items;
  final ValueChanged<String?> onChanged;
  String label;
  DropDown({super.key, required this.items, required this.onChanged,required this.label});
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
    String label=widget.label;
    return Container(
      color: const Color(0xFFEEEEEE),
      child: DropdownButtonFormField(
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
        dropdownColor: const Color(0xFFEEEEEE),
        items: items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Padding(
                padding: const EdgeInsets.fromLTRB(5.0,1.0,0.0,0.0),
            child: Text(value)
            ),
          );
        }).toList(),
        validator: (value){
          if (value == null || value.isEmpty) {
            return "Please mention your $label" ;
          }
          return null;
        },
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
