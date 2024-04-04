import 'package:e_nagarpalika/views/ward/birth_form.dart';
import 'package:flutter/material.dart';

class BirthReg extends StatefulWidget {
  const BirthReg({super.key});

  @override
  State<BirthReg> createState() => _BirthState();
}

class _BirthState extends State<BirthReg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Birth Registration", textAlign: TextAlign.center),
      ),
      body: SizedBox(
        height: 500.0,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Required document for birth registration",
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.red),
                ),
              ),
              const Text(
                  "\u2022 Proof of Birth: This can include documents such as a hospital-issued birth certificate, maternity record, or any other document that verifies the birth of the child"),
              const Text(
                  "\u2022 Parent's Identification Documents: The identification documents of both parents, such as citizenship certificates, passports, or other valid identification papers."),
              const Text(
                  "\u2022 Citizenship Certificate of Parents: The citizenship certificates of both parents."),
              const Text(
                  "\u2022 Affidavit of Birth: In cases where the birth was not registered immediately or there is a delay, an affidavit explaining the reason for the delay may be required."),
              ElevatedButton(
                onPressed: () {},
                child: const Text("View Form"),
              ),
              ElevatedButton(
                onPressed: () {
                  _openForm();
                },
                child: const Text("Fill up Form"),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _openForm() {
    Navigator.push(
        context, MaterialPageRoute(builder: (_) => const BirthForm()));
  }
}
