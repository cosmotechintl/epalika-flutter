import 'package:flutter/material.dart';

class Environment extends StatelessWidget {
  const Environment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Environment"),
        ),
        body: const Text("Environment Screen"));
  }
}
