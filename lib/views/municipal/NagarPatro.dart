import 'package:flutter/material.dart';

import 'calender_widget.dart';

class NagarPatro extends StatefulWidget {
  const NagarPatro({super.key});

  @override
  State<NagarPatro> createState() => _NagarPatroState();
}

class _NagarPatroState extends State<NagarPatro> {

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nagar Patro"),
      ),
      body: CalendarDatePickerWidget(),
    );
  }
}
