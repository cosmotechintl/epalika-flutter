import 'package:flutter/material.dart';

class RadioGroup extends StatefulWidget {
  final List<String> options;
  final ValueChanged<String?> onChanged;
  RadioGroup({required this.options,required this.onChanged});

  @override
  _RadioGroupState createState() => _RadioGroupState();
}

class _RadioGroupState extends State<RadioGroup> {
  late String? _selectedOption;

  @override
  void initState() {
    super.initState();
    _selectedOption = widget.options.first;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widget.options.map((option) {
        return RadioListTile(
          title: Text(option),
          value: option,
          groupValue: _selectedOption,
          onChanged: (value) {
            setState(() {
              _selectedOption = value;
            });
            widget.onChanged(value);
          },
        );
      }).toList(),
    );
  }
}