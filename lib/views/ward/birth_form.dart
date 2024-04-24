import 'package:e_nagarpalika/service/utilities/customWidget/custom_radiobutton.dart';
import 'package:e_nagarpalika/service/utilities/customWidget/dropdown.dart';
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
  final TextEditingController _babyCastecontroller = TextEditingController();
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
  final FocusNode _babyCasteFocus = FocusNode();
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
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint(currentStep.toString());
    List<String> personHelp = [
      "Nurse",
      "Man of House",
      "Sudini",
      "Doctor",
      "Other",
    ];
    List<String> placeOfBirth = [
      "Hospital",
      "Home",
      "Health Institution",
      "other"
    ];
    List<String> gender = [
      "male",
      "female",
      "others",
    ];
    List<String> typeOfBirth = [
      "Single",
      "Twin",
      "Triplet",
      "More than triplet"
    ];
    String? selectedBirthType = typeOfBirth[0];
    String? selectedGender = gender[0];
    String? selectedPersonHelp = personHelp[0];
    String? selectedPlaceofBirth = placeOfBirth[0];
    List<Step> _steps = [
      Step(
          state: currentStep > 0 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 0,
          title: Text("to be filled by register"),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                  textInputType: TextInputType.number),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.05,
              ),
              _createTextField(
                  controller: _regnoController,
                  focus: _regnoFocus,
                  changeFocus: _regDateFocus,
                  label: "Registration No.",
                  textInputType: TextInputType.number),
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
              )
            ],
          )),
      Step(
          state: currentStep > 1 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 1,
          title: Text("details of New born baby"),
          content: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                DropDown(
                  items: placeOfBirth,
                  onChanged: (String? value) {
                    selectedPlaceofBirth = value;
                  },
                  label: 'Place of Birth',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.07,
                ),
                DropDown(
                  items: personHelp,
                  onChanged: (String? value) {
                    selectedPersonHelp = value;
                  },
                  label: 'Person who help during birth',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.07,
                ),
                DropDown(
                    items: gender,
                    onChanged: (String? value) {
                      selectedGender = value;
                    },
                    label: 'gender'),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.07,
                ),
                _createTextField(
                    controller: _babyCastecontroller,
                    focus: _babyCasteFocus,
                    changeFocus: _dobFocus,
                    label: "Caste/Race"),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.07,
                ),
                DropDown(
                    items: typeOfBirth,
                    onChanged: (String? value) {
                      selectedBirthType = value;
                    },
                    label: 'Type of Birth'),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.07,
                ),
                DeformityWidget(_birthDistrictFocus),
                Text(
                  "Address of Birth",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                _createTextField(
                    controller: _birthDistrictController,
                    changeFocus: _birthLocalFocus,
                    label: "District",
                    focus: _birthDistrictFocus),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.07,
                ),
                _createTextField(
                    controller: _birthLocalController,
                    changeFocus: _birthWodanoFocus,
                    label: "Ga.pa/N.pa/M.N.P",
                    focus: _birthLocalFocus),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.07,
                ),
                _createTextField(
                    controller: _birthWodanoController,
                    changeFocus: _birthAdressFocus,
                    label: "Ward No",
                    focus: _birthDistrictFocus),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.07,
                ),
                _createTextField(
                    controller: _birthDistrictController,
                    changeFocus: _gpNameFocus,
                    label: "Address if Born in Abroad",
                    focus: _birthDistrictFocus),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.07,
                ),
              ])),
      Step(
        title: Text("Details of baby's Grand Parents"),
        content: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _createTextField(
                controller: _gpNameController,
                changeFocus: _gpSurnameFocus,
                label: "Grandparent's Name",
                focus: _gpNameFocus),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.07,
            ),
            _createTextField(
                controller: _gpSurnameController,
                changeFocus: _fatherNameFocus,
                label: "Grandparent's Name",
                focus: _gpSurnameFocus),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.07,
            ),
          ],
        ),
      ),
      Step(
          title: Text("Details of baby's Parent"),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Father Details",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              _createTextField(
                  controller: _fatherNameController,
                  changeFocus: _fatherSurnameFocus,
                  label: "father's Name",
                  focus: _fatherNameFocus),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.07,
              ),
              _createTextField(
                  controller: _fatherSurnameController,
                  changeFocus: _fatherDistrictFocus,
                  label: "father's Surname",
                  focus: _fatherSurnameFocus),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.07,
              ),
              _createTextField(
                  controller: _fatherDistrictController,
                  changeFocus: _fatherLocalFocus,
                  label: "District",
                  focus: _fatherDistrictFocus),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.07,
              ),
              _createTextField(
                  controller: _fatherLocalController,
                  changeFocus: _fatherWodanoFocus,
                  label: "Ga.Pa/N.P/M.N.P",
                  focus: _fatherLocalFocus),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.07,
              ),
              _createTextField(
                  controller: _fatherWodanoController,
                  changeFocus: _fatherSadakFocus,
                  label: "Ward no",
                  focus: _fatherWodanoFocus),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.07,
              ),
              _createTextField(
                  controller: _fatherSadakController,
                  changeFocus: _fatherGauFocus,
                  label: "sadak/marg",
                  focus: _fatherSadakFocus),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.07,
              ),
              _createTextField(
                  controller: _fatherGauController,
                  changeFocus: _fatherHouseNumberFocus,
                  label: "Gau",
                  focus: _fatherGauFocus),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.07,
              ),
              _createTextField(
                  controller: _fatherHouseNumberController,
                  changeFocus: _motherNameFocus,
                  label: "House Number",
                  focus: _fatherHouseNumberFocus),
              Text(
                "Mother Details",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              _createTextField(
                  controller: _motherNameController,
                  changeFocus: _motherSurnameFocus,
                  label: "Name",
                  focus: _motherNameFocus),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.07,
              ),
              _createTextField(
                  controller: _motherSurnameController,
                  changeFocus: _motherDistrictFocus,
                  label: "Surname",
                  focus: _motherSurnameFocus),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.07,
              ),
              _createTextField(
                  controller: _motherDistrictController,
                  changeFocus: _motherLocalFocus,
                  label: "District",
                  focus: _motherDistrictFocus),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.07,
              ),
              _createTextField(
                  controller: _motherLocalController,
                  changeFocus: _motherWodanoFocus,
                  label: "Ga.Pa/N.P/M.N.P",
                  focus: _motherLocalFocus),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.07,
              ),
              _createTextField(
                  controller: _motherWodanoController,
                  changeFocus: _motherSadakFocus,
                  label: "Ward no",
                  focus: _motherWodanoFocus),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.07,
              ),
              _createTextField(
                  controller: _motherSadakController,
                  changeFocus: _motherGauFocus,
                  label: "sadak/marg",
                  focus: _motherSadakFocus),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.07,
              ),
              _createTextField(
                  controller: _motherGauController,
                  changeFocus: _motherHouseNumberFocus,
                  label: "Gau",
                  focus: _motherGauFocus),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.07,
              ),
              _createTextField(
                  controller: _motherHouseNumberController,
                  changeFocus: _motherNameFocus,
                  label: "House Number",
                  focus: _motherHouseNumberFocus),
            ],
          ))
    ];
    bool isLastStep = currentStep == _steps.length - 1;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Birth Information Form"),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: _formKey,
          child: Stepper(
              currentStep: currentStep,
              physics: const BouncingScrollPhysics(),
              onStepContinue: () {
                if (!isLastStep) {
                  setState(() {
                    currentStep++;
                    debugPrint(currentStep.toString());
                  });
                }
              },
              onStepCancel: () {
                setState(() {
                  currentStep--;
                });
              },
              onStepTapped: (step) {
                debugPrint(step.toString());
                setState(() {
                  currentStep = step;
                });
              },
              steps: _steps,
              controlsBuilder: (BuildContext context, ControlsDetails details) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: ElevatedButton(
                        onPressed: details.onStepContinue,
                        child: Text(isLastStep ? "Generate\nPDF" : "Next"),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    if (currentStep != 0)
                      Expanded(
                        child: ElevatedButton(
                          onPressed: details.onStepCancel,
                          child: const Text('Previous'),
                        ),
                      ),
                  ],
                );
              }),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  Widget _createTextField(
      {required TextEditingController controller,
      required FocusNode focus,
      required FocusNode changeFocus,
      required String label,
      TextInputType textInputType = TextInputType.name}) {
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

class DeformityWidget extends StatefulWidget {
  @override
  State<DeformityWidget> createState() => _DeformityWidgetState();
  List<String> options = ["Yes", "No"];
  bool selectedOption = true;
  FocusNode _birthDistrictFocusNode;

  DeformityWidget(this._birthDistrictFocusNode);
}

class _DeformityWidgetState extends State<DeformityWidget> {
  TextEditingController _babyDeformityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Any Physical Deformity"),
        RadioGroup(
            options: widget.options,
            onChanged: (value) {
              debugPrint(value.toString());
              setState(() {
                widget.selectedOption = value == "Yes";
              });
            }),
        if (widget.selectedOption)
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.97,
            child: TextFormField(
              controller: _babyDeformityController,
              decoration: const InputDecoration(
                labelText: "Mention Physical Deformity",
                filled: true,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
                fillColor: const Color(0xFFEEEEEE),
                contentPadding: const EdgeInsets.all(5.0),
              ),
              keyboardType: TextInputType.name,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please mention your physical deformity';
                }
                return null;
              },
              onEditingComplete: () {
                FocusScope.of(context)
                    .requestFocus(widget._birthDistrictFocusNode);
              },
            ),
          ),
        SizedBox(
          height: MediaQuery.of(context).size.width * 0.07,
        ),
      ],
    );
  }
}
