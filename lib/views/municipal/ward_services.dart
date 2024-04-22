import 'package:e_nagarpalika/views/ward/tax_payment.dart';
import 'package:e_nagarpalika/views/ward/tourism_ward.dart';
import 'package:e_nagarpalika/service/utilities/utility.dart';
import 'package:e_nagarpalika/views/ward/ward_info.dart';
import 'package:flutter/material.dart';
import '../ward/death.dart';
import '../ward/esifarish_ward.dart';
import '../ward/forum_ward.dart';
import '../ward/helpline_ward.dart';
import '../ward/marraige.dart';
import '../ward/birth.dart';

class WardServices extends StatelessWidget {
  const WardServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Ward Services")),
        body: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.98,
              padding:
              const EdgeInsets.symmetric(horizontal: 5.0, vertical: 25.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color(0xFFE3F2FD),
              ),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                crossAxisSpacing: MediaQuery
                    .of(context)
                    .size
                    .width * 0.02,
                mainAxisSpacing: MediaQuery
                    .of(context)
                    .size
                    .width * 0.02,
                children: [
                  Utility.createCustomIconButton(
                      "marriage.png", "Marriage Registration", const MarriageReg(),
                      isGrid: true, context: context),
                  Utility.createCustomIconButton(
                      "birth.png", "Birth\nRegistration", const BirthReg(),
                      isGrid: true,context: context),
                  Utility.createCustomIconButton(
                      "death.png", "Death\nRegistration", const DeathReg(),
                      isGrid: true,context: context),
                  Utility.createCustomIconButton(
                      "tax.png", "Tax Payment", const TaxPayment(),
                      isGrid: true,context: context),
                  Utility.createCustomIconButton("helpline.png",
                      "Helpline Number", const HelplineNumberWard(),
                      isGrid: true,context: context),
                  Utility.createCustomIconButton(
                      "info.png", "Ward Info", const WardInfo(),
                      isGrid: true,context: context),
                  Utility.createCustomIconButton(
                      "tourism.png", "Tourism Area", const TourismAreaWard(),
                      isGrid: true,context: context),
                  Utility.createCustomIconButton(
                      "sifarish.png", "E-Sifarish", const ESifarishWard(),
                      isGrid: true,context: context),
                  Utility.createCustomIconButton(
                      "public.png", "Public Forum", const PublicForumWard(),
                      isGrid: true,context: context),
                ],
              ),
            ),
          ),
        ));
  }
}
