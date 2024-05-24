import 'package:e_nagarpalika/main.dart';
import 'package:e_nagarpalika/views/municipal/Health.dart';
import 'package:e_nagarpalika/views/municipal/NagarPatro.dart';
import 'package:e_nagarpalika/views/municipal/adminstration.dart';
import 'package:e_nagarpalika/views/municipal/ambulance.dart';
import 'package:e_nagarpalika/views/municipal/e_sifarish.dart';
import 'package:e_nagarpalika/views/municipal/education.dart';
import 'package:e_nagarpalika/views/municipal/environment.dart';
import 'package:e_nagarpalika/views/municipal/financial_services.dart';
import 'package:e_nagarpalika/views/municipal/helpline_number.dart';
import 'package:e_nagarpalika/views/municipal/human_right.dart';
import 'package:e_nagarpalika/views/municipal/news_portal.dart';
import 'package:e_nagarpalika/views/municipal/notice.dart';
import 'package:e_nagarpalika/views/municipal/police.dart';
import 'package:e_nagarpalika/views/municipal/public_forum.dart';
import 'package:e_nagarpalika/views/municipal/queries.dart';
import 'package:e_nagarpalika/views/municipal/story_screen.dart';
import 'package:e_nagarpalika/views/municipal/suggestion.dart';
import 'package:e_nagarpalika/views/municipal/tourism_area.dart';
import 'package:e_nagarpalika/service/utilities/utility.dart';
import 'package:e_nagarpalika/views/municipal/ward_services.dart';
import 'package:flutter/material.dart';
import 'package:e_nagarpalika/views/municipal/blog.dart';
import 'package:e_nagarpalika/views/municipal/contact_mayor.dart';

import '../../models/button_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../service/locale_manager.dart';
import 'login2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(5.0, 30.0, 0.0, 0.0),
          children: [
            _LanguageSelectWidget(),
            Utility.createCustomIconButton("doctor.png",
                AppLocalizations.of(context)!.health, const Health(),
                horizontal: true, context: context),
            Utility.createCustomIconButton("education.png",
                AppLocalizations.of(context)!.education, const Education(),
                horizontal: true, context: context),
            Utility.createCustomIconButton(
                "helpline.png",
                AppLocalizations.of(context)!.helplineNumber,
                const HelplineNumber(),
                horizontal: true,
                context: context),
            Utility.createCustomIconButton("ambulance.png",
                AppLocalizations.of(context)!.ambulance, const Ambulance(),
                horizontal: true, context: context),
            Utility.createCustomIconButton("police.png",
                AppLocalizations.of(context)!.police, const Police(),
                horizontal: true, context: context),
            Utility.createCustomIconButton(
                "administrator.png",
                AppLocalizations.of(context)!.administration,
                const Adminstration(),
                horizontal: true,
                context: context),
            Utility.createCustomIconButton("tourism.png",
                AppLocalizations.of(context)!.tourismArea, const TourismArea(),
                horizontal: true, context: context),
            Utility.createCustomIconButton("news.png",
                AppLocalizations.of(context)!.newsPortal, const NewsPortal(),
                horizontal: true, context: context),
            Utility.createCustomIconButton(
                "blog.png", AppLocalizations.of(context)!.blog, const Blog(),
                horizontal: true, context: context),
            Utility.createCustomIconButton("environmentalism.png",
                AppLocalizations.of(context)!.environment, const Environment(),
                horizontal: true, context: context),
            Utility.createCustomIconButton("note.png",
                AppLocalizations.of(context)!.notice, const Notice(),
                horizontal: true, context: context),
            Utility.createCustomIconButton("suggestion.png",
                AppLocalizations.of(context)!.suggestion, const Suggestion(),
                horizontal: true, context: context),
            Utility.createCustomIconButton(
                "phone.png",
                AppLocalizations.of(context)!.contactMayor,
                const ContactMayor(),
                horizontal: true,
                context: context
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Center(
          child: Text(
            AppLocalizations.of(context)!.nagarjuna,
            textAlign: TextAlign.center,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => LoginRegister()));
              },
              icon: const Icon(
                Icons.account_circle,
                color: Colors.white,
                size: 42.0,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.012,
            ),
            //NewsSwipePage(newsList: newsList),
            const StoryScreen(),
            SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.025,
            ),
            Section(
              title: AppLocalizations.of(context)!.administrativeSolutions,
              iconsAndTexts: [
                IconAndText(
                    "administrator.png",
                    AppLocalizations.of(context)!.administration,
                    const Adminstration()),
                IconAndText(
                    "municipal.png",
                    AppLocalizations.of(context)!.wardServices,
                    const WardServices()),
                IconAndText(
                    "salary.png",
                    AppLocalizations.of(context)!.financialServices,
                    const FinancialServices()),
                IconAndText(
                    "law.png",
                    AppLocalizations.of(context)!.lawandHumanRights,
                    const LawandHumanRights()),
                IconAndText(
                    "nagarpatro.png",
                    AppLocalizations.of(context)!.nagarPatro,
                    const NagarPatro()),
                IconAndText(
                    "phone.png",
                    AppLocalizations.of(context)!.contactMayor,
                    const ContactMayor()),
                IconAndText("query.png", AppLocalizations.of(context)!.queries,
                    const Queries()),
              ],
            ),
            SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.025,
            ),
            Section(
              title: AppLocalizations.of(context)!.communityEngagement,
              iconsAndTexts: [
                IconAndText("education.png",
                    AppLocalizations.of(context)!.education, const Education()),
                IconAndText("doctor.png", AppLocalizations.of(context)!.health,
                    const Health()),
                IconAndText(
                    "environmentalism.png",
                    AppLocalizations.of(context)!.environment,
                    const Environment()),
                IconAndText(
                    "tourism.png",
                    AppLocalizations.of(context)!.tourismArea,
                    const TourismArea()),
              ],
            ),
            SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.025,
            ),
            Section(
              title:
              AppLocalizations.of(context)!.officialNoticesAndAnnouncements,
              iconsAndTexts: [
                IconAndText("note.png", AppLocalizations.of(context)!.notice,
                    const Notice()),
                IconAndText(
                    "suggestion.png",
                    AppLocalizations.of(context)!.suggestion,
                    const Suggestion()),
                IconAndText("sifarish.png",
                    AppLocalizations.of(context)!.esifarish, const ESifarish()),
              ],
            ),
            SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.025,
            ),
            Section(
                title: AppLocalizations.of(context)!.emergencyServices,
                iconsAndTexts: [
                  IconAndText(
                      "helpline.png",
                      AppLocalizations.of(context)!.helplineNumber,
                      const HelplineNumber()),
                  IconAndText(
                      "ambulance.png",
                      AppLocalizations.of(context)!.ambulance,
                      const Ambulance()),
                  IconAndText("police.png",
                      AppLocalizations.of(context)!.police, const Police()),
                ]),
            SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.025,
            ),
            Section(
              title: "Online Information",
              iconsAndTexts: [
                IconAndText(
                    "news.png",
                    AppLocalizations.of(context)!.newsPortal,
                    const NewsPortal()),
                IconAndText("blog.png", AppLocalizations.of(context)!.blog,
                    const Blog()),
              ],
            ),
            SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.025,
            ),
            Section(
              title: AppLocalizations.of(context)!.publicForums,
              iconsAndTexts: [
                IconAndText(
                    "public.png",
                    AppLocalizations.of(context)!.publicForums,
                    const PublicForum()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Section extends StatelessWidget {
  final String title;
  final List<IconAndText> iconsAndTexts;

  const Section({super.key, required this.title, required this.iconsAndTexts});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width * 0.92,
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: const Color(0xFFE3F2FD),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0, bottom: 10.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 20.0,
                color: Color(0xff000000),
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.15,
            child: iconsAndTexts.length > 3
                ? CustomScrollView(
              scrollDirection: Axis.horizontal,
              slivers: [
                SliverList.builder(
                  itemCount: iconsAndTexts.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Utility.createCustomIconButton(
                        iconsAndTexts[index].icon,
                        iconsAndTexts[index].text,
                        iconsAndTexts[index].screen,
                        context: context);
                  },
                ),
              ],
            )
                : Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: iconsAndTexts
                  .map((data) =>
                  Utility.createCustomIconButton(
                      data.icon, data.text, data.screen,
                      context: context))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class _LanguageSelectWidget extends StatefulWidget {
  @override
  State<_LanguageSelectWidget> createState() => _LanguageSelectWidgetState();
}

class _LanguageSelectWidgetState extends State<_LanguageSelectWidget> {
  late bool isSwitched = false;
  int count = 0;

  @override
  void initState() {
    super.initState();
    _initLocale();
  }

  void _initLocale() async {
    LocaleManager.getLocale().then((locale) {
      setState(() {
        isSwitched = locale.languageCode == "ne";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(AppLocalizations.of(context)!.english),
        Switch(
          value: isSwitched,
          onChanged: (bool value) {
            isSwitched = value;
            MyApp.setLocale(
                context, value ? const Locale('ne') : const Locale('en'));
          },
        ),
        Text(AppLocalizations.of(context)!.nepali),
      ],
    );
  }
}
