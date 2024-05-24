import 'package:e_nagarpalika/views/municipal/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'login.dart';

class LoginRegister extends StatefulWidget {

  bool isSignInActive = true;
  LoginRegister({super.key});

  @override
  State<LoginRegister> createState() => _LoginRegisterState();
}

class _LoginRegisterState extends State<LoginRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Auth Form"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
          width: MediaQuery
              .sizeOf(context)
              .width * 0.5,
          child:Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        widget.isSignInActive = true;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          color: widget.isSignInActive ? Colors.blue : Colors
                              .grey,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      setState(() {
                        widget.isSignInActive = false;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: widget.isSignInActive ? Colors.grey : Colors
                              .blue,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height*0.02,
          ),
          SingleChildScrollView(child: widget.isSignInActive?Login():Register())
      ]
      ),
    );
  }
}

