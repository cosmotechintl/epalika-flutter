import 'package:e_nagarpalika/service/utilities/dropdown.dart';
import 'package:flutter/material.dart';

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class BirthForm extends StatefulWidget {
  const BirthForm({super.key});

  @override
  State<BirthForm> createState() => _BirthFormState();
}

class _BirthFormState extends State<BirthForm> {
  final TextEditingController _zoneController = TextEditingController();
  final TextEditingController _districtController = TextEditingController();
  final TextEditingController _localController = TextEditingController();
  final TextEditingController _wadaNoController = TextEditingController();
  final TextEditingController _registerNameController = TextEditingController();
  final TextEditingController _employeeRefnoController =
      TextEditingController();
  final TextEditingController _regDateController = TextEditingController();
  final TextEditingController _regnoController = TextEditingController();
  final TextEditingController _familiyRegnoController = TextEditingController();
  final TextEditingController _babyNameController = TextEditingController();
  final TextEditingController _babySurNameController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _birthDistrictController =
      TextEditingController();
  final TextEditingController _birthLocalController = TextEditingController();
  final TextEditingController _birthWodanoController = TextEditingController();
  final TextEditingController _birthAdressController = TextEditingController();
  final TextEditingController _gpNameController = TextEditingController();
  final TextEditingController _gpSurnameController = TextEditingController();
  final TextEditingController _fatherNameController = TextEditingController();
  final TextEditingController _fatherSurnameController =
      TextEditingController();
  final TextEditingController _motherNameController = TextEditingController();
  final TextEditingController _motherSurnameController =
      TextEditingController();
  final TextEditingController _fatherDistrictController =
      TextEditingController();
  final TextEditingController _fatherLocalController = TextEditingController();
  final TextEditingController _fatherWodanoController = TextEditingController();
  final TextEditingController _fatherSadakController = TextEditingController();
  final TextEditingController _fatherGauController = TextEditingController();
  final TextEditingController _fatherHouseNumberController =
      TextEditingController();
  final TextEditingController _motherDistrictController =
      TextEditingController();
  final TextEditingController _motherLocalController = TextEditingController();
  final TextEditingController _motherWodanoController = TextEditingController();
  final TextEditingController _motherSadakController = TextEditingController();
  final TextEditingController _motherGauController = TextEditingController();
  final TextEditingController _motherHouseNumberController =
      TextEditingController();
  final FocusNode _zoneFocus = FocusNode();
  final FocusNode _districtFocus = FocusNode();
  final FocusNode _localFocus = FocusNode();
  final FocusNode _wadaNoFocus = FocusNode();
  final FocusNode _registerNameFocus = FocusNode();
  final FocusNode _employeeRefnoFocus = FocusNode();
  final FocusNode _regnoFocus = FocusNode();
  FocusNode _regDateFocus = FocusNode();
  final FocusNode _familiyRegnoFocus = FocusNode();
  final FocusNode _babyNameFocus = FocusNode();
  final FocusNode _babySurNameFocus = FocusNode();
  final FocusNode _dobFocus = FocusNode();
  final FocusNode _birthDistrictFocus = FocusNode();
  final FocusNode _birthLocalFocus = FocusNode();
  final FocusNode _birthWodanoFocus = FocusNode();
  final FocusNode _birthAdressFocus = FocusNode();
  final FocusNode _gpNameFocus = FocusNode();
  final FocusNode _gpSurnameFocus = FocusNode();
  final FocusNode _fatherNameFocus = FocusNode();
  final FocusNode _fatherSurnameFocus = FocusNode();
  final FocusNode _motherNameFocus = FocusNode();
  final FocusNode _motherSurnameFocus = FocusNode();
  final FocusNode _fatherDistrictFocus = FocusNode();
  final FocusNode _fatherLocalFocus = FocusNode();
  final FocusNode _fatherWodanoFocus = FocusNode();
  final FocusNode _fatherSadakFocus = FocusNode();
  final FocusNode _fatherGauFocus = FocusNode();
  final FocusNode _fatherHouseNumberFocus = FocusNode();
  final FocusNode _motherDistrictFocus = FocusNode();
  final FocusNode _motherLocalFocus = FocusNode();
  final FocusNode _motherWodanoFocus = FocusNode();
  final FocusNode _motherSadakFocus = FocusNode();
  final FocusNode _motherGauFocus = FocusNode();
  final FocusNode _motherHouseNumberFocus = FocusNode();

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    List<String> birthAddress = [
      "Hospital",
      "Home",
      "Health Institution",
      "other"
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Birth Information Form"),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.97,
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 1.0, color: Colors.black),
                        bottom: BorderSide(width: 1.0, color: Colors.black),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        'To be filled by register office',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.05,
                  ),
                  _createTextField(
                      controller: _zoneController,
                      focus: _zoneFocus,
                      changeFocus: _districtFocus,
                      label: "Zone"),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.05,
                  ),
                  _createTextField(
                      controller: _districtController,
                      focus: _districtFocus,
                      changeFocus: _localFocus,
                      label: "District"),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.05,
                  ),
                  _createTextField(
                      controller: _localController,
                      focus: _localFocus,
                      changeFocus: _wadaNoFocus,
                      label: "Ga.pa/N.Pa/M.N.P"),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.05,
                  ),
                  _createTextField(
                      controller: _wadaNoController,
                      focus: _wadaNoFocus,
                      changeFocus: _registerNameFocus,
                      label: "Ward No",
                      textInputType: TextInputType.number),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.05,
                  ),
                  _createTextField(
                      controller: _registerNameController,
                      focus: _registerNameFocus,
                      changeFocus: _employeeRefnoFocus,
                      label: "Name of Local Register"),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.05,
                  ),
                  _createTextField(
                      controller: _employeeRefnoController,
                      focus: _employeeRefnoFocus,
                      changeFocus: _regnoFocus,
                      label: "Employee Reference No",
                      textInputType: TextInputType.number
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.05,
                  ),
                  _createTextField(
                      controller: _regnoController,
                      focus: _regnoFocus,
                      changeFocus: _regDateFocus,
                      label: "Registration No.",
                      textInputType: TextInputType.number
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.05,
                  ),
                  _createTextField(
                      controller: _regDateController,
                      focus: _regDateFocus,
                      changeFocus: _babyNameFocus,
                      label: "Form registration date",
                      textInputType: TextInputType.datetime),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.97,
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 1.0, color: Colors.black),
                        bottom: BorderSide(width: 1.0, color: Colors.black),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        'Details of new born baby',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.05,
                  ),
                  _createTextField(
                      controller: _babyNameController,
                      focus: _babyNameFocus,
                      changeFocus: _babySurNameFocus,
                      label: "Name"),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.05,
                  ),
                  _createTextField(
                      controller: _babySurNameController,
                      focus: _babySurNameFocus,
                      changeFocus: _dobFocus,
                      label: "Surname"),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.05,
                  ),
                  _createTextField(
                      controller: _dobController,
                      focus: _dobFocus,
                      changeFocus: _birthAdressFocus,
                      label: "Date of Birth",
                      textInputType: TextInputType.datetime),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.05,
                  ),
                  DropDown(items: birthAddress,
                    onChanged: (String? value) {
                      selectedValue=value;
                    }),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.07,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Generate PDF'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _createTextField(
      {required TextEditingController controller,
      FocusNode? focus,
      required FocusNode changeFocus,
      required String label,
      TextInputType textInputType = TextInputType.text}) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.97,
      child: TextFormField(
        controller: controller,
        focusNode: focus,
        decoration: InputDecoration(
          labelText: label,
          filled: true,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          fillColor: const Color(0xFFEEEEEE),
          contentPadding: const EdgeInsets.all(5.0),
        ),
        keyboardType: textInputType,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your $label';
          }
          return null;
        },
        onEditingComplete: () {
          FocusScope.of(context).requestFocus(changeFocus);
        },

      ),
    );
  }
}
