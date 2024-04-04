import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../models/User.dart';
import '../../service/utilities/config.dart';
import '../../service/utilities/dropdown.dart';
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _emailEditingController = TextEditingController();
  final TextEditingController _nameEditingController = TextEditingController();
  final TextEditingController _numEditingController = TextEditingController();
  final TextEditingController _addressEditingController = TextEditingController();
  final TextEditingController _passwordEditingController = TextEditingController();
  final TextEditingController _wardnoEditingController = TextEditingController();

  final FocusNode _emailFocus = FocusNode();
  final FocusNode _numFocus = FocusNode();
  final FocusNode _addressFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();
  final FocusNode _nameFocus = FocusNode();
  final FocusNode _wardnoFocus = FocusNode();

  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    List<String> gender = ["male", "Female", "others"];
    return Scaffold(
        appBar: AppBar(
          title: const Text("Register"),
        ),
        body: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery
                        .of(context)
                        .size
                        .width * 0.05,
                  ),
                  _createTextField(controller: _nameEditingController,
                      focus: _nameFocus,
                      changeFocus: _emailFocus,
                      label: "name"),
                  SizedBox(
                    height: MediaQuery
                        .of(context)
                        .size
                        .width * 0.05,
                  ),
                  _createTextField(controller: _emailEditingController,
                      focus: _emailFocus,
                      changeFocus: _addressFocus,
                      label: "Email",
                      textInputType: TextInputType.emailAddress),
                  SizedBox(
                    height: MediaQuery
                        .of(context)
                        .size
                        .width * 0.05,
                  ),
                  _createTextField(controller: _addressEditingController,
                      focus: _addressFocus,
                      changeFocus: _numFocus,
                      label: "Address"),
                  SizedBox(
                    height: MediaQuery
                        .of(context)
                        .size
                        .width * 0.05,
                  ),
                  _createTextField(controller: _numEditingController,
                      focus: _numFocus,
                      changeFocus: _wardnoFocus,
                      label: "Phone Number",
                      textInputType: TextInputType.phone),
                  SizedBox(
                    height: MediaQuery
                        .of(context)
                        .size
                        .width * 0.05,
                  ),
                  _createTextField(controller: _wardnoEditingController,
                      focus: _wardnoFocus,
                      changeFocus: _passwordFocus,
                      label: "Ward No",
                      textInputType: TextInputType.number),
                  SizedBox(
                    height: MediaQuery
                        .of(context)
                        .size
                        .width * 0.05,
                  ),
                  SizedBox(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.97,
                    child: TextFormField(
                      controller: _passwordEditingController,
                      focusNode: _passwordFocus,
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: const InputDecoration(
                        labelText: "Password",
                        hintText: "Password",
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        fillColor: Color(0xFFEEEEEE),
                        contentPadding: EdgeInsets.all(8.0),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                      onEditingComplete: () {
                        _register();
                      },
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery
                        .of(context)
                        .size
                        .width * 0.05,
                  ),
                  DropDown(items: gender, onChanged: (String? value) {
                    selectedGender = value;
                  },),
                  SizedBox(
                    height: MediaQuery
                        .of(context)
                        .size
                        .width * 0.05,
                  ),
                  ElevatedButton(
                    onPressed: _register,
                    child: const Text('Sign Up'),
                  ),

                ],
              ),
            ),
          ),
        )
    );
  }

  Widget _createTextField({required TextEditingController controller,
    required FocusNode? focus,
    required FocusNode changeFocus,
    required String label,
    TextInputType textInputType = TextInputType.text,}) {
    return SizedBox(
      width: MediaQuery
          .of(context)
          .size
          .width * 0.97,
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

  Future<void> _register() async {
    if (_formKey.currentState?.validate() ?? false) {
      String email = _emailEditingController.text;
      String password = _passwordEditingController.text;
      String gender = selectedGender ?? "male";
      String number = _numEditingController.text;
      String address = _addressEditingController.text;
      String name = _nameEditingController.text;
      User user = User(name: name,
          address: address,
          email: email,
          mobileNumber: number,
          gender: gender,
          password: password);
      String response = await signup(user) ;
      showDialog(
        context: context,
        builder: (ctx) =>
            AlertDialog(
              content: Text(response),
              actions: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();
                  },
                  child: const Text("okay"),
                )
              ],
            ),
      );
      _formKey.currentState!.reset();
    }
  }

  Future<String> signup(User user) async {
    try {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      );

      Map data = user.toJson();
      dynamic body = json.encode(data);
      var response = await http.post(
        Uri.parse(Config.getSignupEndpoint()),
        headers: {
          "Access-Control-Allow-Origin": "*",
          'Content-Type': 'application/json',
          'Accept': '*/*'
        },
        body: body,
      );
      Navigator.pop(context);

      String respond = response.body;
      return respond;
    } catch (e) {
      Navigator.pop(context);
      print('Error: $e');
      return "Registration failed!\nTry Again";
    }
  }
}