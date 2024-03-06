import 'package:flutter/material.dart';

class Utility {
  static late BuildContext context;

  static Widget createCustomIconButton(
      String iconName, String btnText, Widget screen,
      {bool horizontal = false, bool isGrid = false}) {
    double buttonSize = MediaQuery.of(context).size.width * 0.18;
    return InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
        },
        child: horizontal
            ? Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/icons/$iconName",
                      height: buttonSize / 1.5,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      btnText,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ],
              )
            : isGrid
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons/$iconName",
                        height: buttonSize / 1.15,
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        btnText,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 13.0),
                      ),
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons/$iconName",
                        height: buttonSize,
                      ),
                      const SizedBox(
                        width: 8.0,
                        height: 8.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          btnText,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ));
  }
}
