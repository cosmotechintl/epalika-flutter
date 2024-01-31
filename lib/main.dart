import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_nagarpalika/utility.dart';
import 'package:flutter/material.dart';

import 'login.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    theme:ThemeData(
         appBarTheme: AppBarTheme(
           backgroundColor: const Color(0xff64b5f6)
         ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: TextButton.styleFrom(
                backgroundColor: const Color(0xff64b5f6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    wordSpacing: 2,
                    letterSpacing: 2))),
          scaffoldBackgroundColor: const Color(0xFFFFFBFE),

    ),
    home: HomeScreen(),
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
                "doctor.png", "Health", horizontal: true),
            Utility.createCustomIconButton(
                "education.png", "Education", horizontal: true),
            Utility.createCustomIconButton(
                "helpline.png", "Helpline Number", horizontal: true),
            Utility.createCustomIconButton(
                "ambulance.png", "Ambulance", horizontal: true),
            Utility.createCustomIconButton(
                "police.png", "Police", horizontal: true),
            Utility.createCustomIconButton(
                "administrator.png", "Administration", horizontal: true),
            Utility.createCustomIconButton(
                "tourism.png", "Tourism Area", horizontal: true),
            Utility.createCustomIconButton(
                "news.png", "News Portal", horizontal: true),
            Utility.createCustomIconButton(
                "blog.png", "Blog", horizontal: true),
            Utility.createCustomIconButton(
                "environmentalism.png", "Environment", horizontal: true),
            Utility.createCustomIconButton(
                "note.png", "Notice", horizontal: true),
            Utility.createCustomIconButton(
                "suggestion.png", "Suggestion", horizontal: true),
            Utility.createCustomIconButton(
                "phone.png", "Contact Mayor", horizontal: true),
          ],
        ),
      ),
      appBar: AppBar(
        title: Center(
          child: Text(
            "Nagarjuna",
            textAlign: TextAlign.center,
          ),
        ),
        actions:[
          IconButton(
              onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> const Login()));
              },
              icon: const Icon(Icons.account_circle,
                color: Colors.white,
                size: 42.0,
              )
          ),
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
            NewsSwipePage(newsList: newsList),
            SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.025,
            ),
            Section(
              title: 'Administrative Solutions',
              iconsAndTexts: [
                IconAndText("administrator.png", "Administration"),
                IconAndText("salary.png", "Financial Services"),
                IconAndText("law.png", "Law and Human\nRights"),
                IconAndText("nagarpatro.png", "Nagar Patro"),
                IconAndText("phone.png", "Contact Mayor"),
                IconAndText("query.png", "Queries"),
              ],
            ),
            SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.025,
            ),
            Section(
              title: 'Community Engagement',
              iconsAndTexts: [
                IconAndText("education.png", "Education"),
                IconAndText("doctor.png", "Health"),
                IconAndText("environmentalism.png", "Environment"),
                IconAndText("tourism.png", "Tourism\narea"),
              ],
            ),
            SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.025,
            ),
            Section(
              title: "Official Notices And\n Announcements",
              iconsAndTexts: [
                IconAndText("note.png", "Notice"),
                IconAndText("suggestion.png", "Suggestion"),
                IconAndText("sifarish.png", "E-sifarish"),
              ],
            ),
            SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.025,
            ),
            Section(
                title: "Emergency Services",
                iconsAndTexts: [
                  IconAndText("helpline.png", "Helpline\nNumbers"),
                  IconAndText("ambulance.png", "Ambulance"),
                  IconAndText("police.png", "Police"),
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
                IconAndText("news.png", "News Portal"),
                IconAndText("blog.png", "Blog"),
              ],
            ),
            SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.025,
            ),
            Section(
              title: "Public Forums",
              iconsAndTexts: [
                IconAndText("public.png", "Public\nForums"),
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
      width: MediaQuery
          .of(context)
          .size
          .width,
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
                .height * 0.2,
            child: iconsAndTexts.length > 3
                ? CustomScrollView(
              scrollDirection: Axis.horizontal,
              slivers: [
                SliverList.builder(
                  itemCount: iconsAndTexts.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Utility.createCustomIconButton(
                        iconsAndTexts[index].icon, iconsAndTexts[index].text);
                  },
                ),
              ],
            )
                : Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: iconsAndTexts
                  .map((data) =>
                  Utility.createCustomIconButton(
                      data.icon, data.text))
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

  IconAndText(this.icon, this.text);
}
