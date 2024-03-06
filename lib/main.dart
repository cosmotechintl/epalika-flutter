import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_nagarpalika/Health.dart';
import 'package:e_nagarpalika/NagarPatro.dart';
import 'package:e_nagarpalika/adminstration.dart';
import 'package:e_nagarpalika/ambulance.dart';
import 'package:e_nagarpalika/e_sifarish.dart';
import 'package:e_nagarpalika/education.dart';
import 'package:e_nagarpalika/environment.dart';
import 'package:e_nagarpalika/financial_services.dart';
import 'package:e_nagarpalika/helpline_number.dart';
import 'package:e_nagarpalika/human_right.dart';
import 'package:e_nagarpalika/news_portal.dart';
import 'package:e_nagarpalika/notice.dart';
import 'package:e_nagarpalika/police.dart';
import 'package:e_nagarpalika/public_forum.dart';
import 'package:e_nagarpalika/queries.dart';
import 'package:e_nagarpalika/suggestion.dart';
import 'package:e_nagarpalika/toruism_area.dart';
import 'package:e_nagarpalika/utility.dart';
import 'package:e_nagarpalika/ward_services.dart';
import 'package:flutter/material.dart';
import 'blog.dart';
import 'contact_mayor.dart';
import 'login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      appBarTheme: const AppBarTheme(backgroundColor: Color(0xff64b5f6)),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(
              backgroundColor: const Color(0xff64b5f6),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  wordSpacing: 2,
                  letterSpacing: 2))),
      scaffoldBackgroundColor: const Color(0xFFFFFBFE),
    ),
    home: const HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Utility.context = context;
    List<String> newsList = [
      'News 1',
      'News 2',
      'News 3',
    ];
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(5.0, 30.0, 0.0, 0.0),
          children: [
            const LanguageSelectWidget(),
            Utility.createCustomIconButton(
                "doctor.png", "Health", const Health(),
                horizontal: true),
            Utility.createCustomIconButton(
                "education.png", "Education", const Education(),
                horizontal: true),
            Utility.createCustomIconButton(
                "helpline.png", "Helpline Number", const HelplineNumber(),
                horizontal: true),
            Utility.createCustomIconButton(
                "ambulance.png", "Ambulance", const Ambulance(),
                horizontal: true),
            Utility.createCustomIconButton(
                "police.png", "Police", const Police(),
                horizontal: true),
            Utility.createCustomIconButton(
                "administrator.png", "Administration", const Adminstration(),
                horizontal: true),
            Utility.createCustomIconButton(
                "tourism.png", "Tourism Area", const TourismArea(),
                horizontal: true),
            Utility.createCustomIconButton(
                "news.png", "News Portal", const NewsPortal(),
                horizontal: true),
            Utility.createCustomIconButton("blog.png", "Blog", const Blog(),
                horizontal: true),
            Utility.createCustomIconButton(
                "environmentalism.png", "Environment", const Environment(),
                horizontal: true),
            Utility.createCustomIconButton("note.png", "Notice", const Notice(),
                horizontal: true),
            Utility.createCustomIconButton(
                "suggestion.png", "Suggestion", const Suggestion(),
                horizontal: true),
            Utility.createCustomIconButton(
                "phone.png", "Contact Mayor", const ContactMayor(),
                horizontal: true),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Nagarjuna",
            textAlign: TextAlign.center,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Login()));
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
              height: MediaQuery.of(context).size.height * 0.012,
            ),
            NewsSwipePage(newsList: newsList),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            Section(
              title: 'Administrative Solutions',
              iconsAndTexts: [
                IconAndText("administrator.png", "Administration",
                    const Adminstration()),
                IconAndText(
                    "municipal.png", "Ward\nServices", const WardServices()),
                IconAndText("salary.png", "Financial Services",
                    const FinancialServices()),
                IconAndText("law.png", "Law and Human\nRights",
                    const LawandHumanRights()),
                IconAndText(
                    "nagarpatro.png", "Nagar Patro", const NagarPatro()),
                IconAndText("phone.png", "Contact Mayor", const ContactMayor()),
                IconAndText("query.png", "Queries", const Queries()),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            Section(
              title: 'Community Engagement',
              iconsAndTexts: [
                IconAndText("education.png", "Education", const Education()),
                IconAndText("doctor.png", "Health", const Health()),
                IconAndText(
                    "environmentalism.png", "Environment", const Environment()),
                IconAndText(
                    "tourism.png", "Tourism\narea", const TourismArea()),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            Section(
              title: "Official Notices And\n Announcements",
              iconsAndTexts: [
                IconAndText("note.png", "Notice", const Notice()),
                IconAndText("suggestion.png", "Suggestion", const Suggestion()),
                IconAndText("sifarish.png", "E-sifarish", const ESifarish()),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            Section(title: "Emergency Services", iconsAndTexts: [
              IconAndText(
                  "helpline.png", "Helpline\nNumbers", const HelplineNumber()),
              IconAndText("ambulance.png", "Ambulance", const Ambulance()),
              IconAndText("police.png", "Police", const Police()),
            ]),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            Section(
              title: "Online Information",
              iconsAndTexts: [
                IconAndText("news.png", "News Portal", const NewsPortal()),
                IconAndText("blog.png", "Blog", const Blog()),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            Section(
              title: "Public Forums",
              iconsAndTexts: [
                IconAndText(
                    "public.png", "Public\nForums", const PublicForum()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NewsSwipePage extends StatefulWidget {
  final List<String> newsList;

  const NewsSwipePage({required this.newsList, super.key});

  @override
  _NewsSwipePageState createState() => _NewsSwipePageState(newsList: newsList);
}

class _NewsSwipePageState extends State<NewsSwipePage> {
  List<String> newsList;

  _NewsSwipePageState({required this.newsList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 200.0,
      child: CarouselSlider.builder(
        itemCount: newsList.length,
        itemBuilder: (context, itemIndex, pageIndexView) {
          return NewsCard(newsList[itemIndex]);
        },
        options: CarouselOptions(
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          viewportFraction: 0.8,
          aspectRatio: 2.0,
          initialPage: 1,
          enableInfiniteScroll: true,
        ),
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final String news;

  const NewsCard(this.news, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      color: const Color(0xff64b5f6),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            news,
            style: const TextStyle(fontSize: 20.0),
          ),
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
      width: MediaQuery.of(context).size.width * 0.92,
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
            height: MediaQuery.of(context).size.height * 0.2,
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
                              iconsAndTexts[index].screen);
                        },
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: iconsAndTexts
                        .map((data) => Utility.createCustomIconButton(
                            data.icon, data.text, data.screen))
                        .toList(),
                  ),
          ),
        ],
      ),
    );
  }
}

class LanguageSelectWidget extends StatefulWidget {
  const LanguageSelectWidget({super.key});

  @override
  State<LanguageSelectWidget> createState() => _LanguageSelectWidgetState();
}

class _LanguageSelectWidgetState extends State<LanguageSelectWidget> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("English"),
        Switch(
          value: isSwitched,
          onChanged: (bool value) {
            setState(() {
              isSwitched = !isSwitched;
            });
          },
        ),
        const Text("Nepali"),
      ],
    );
  }
}

class IconAndText {
  final String icon;
  final String text;
  final Widget screen;
  IconAndText(this.icon, this.text, this.screen);
}
