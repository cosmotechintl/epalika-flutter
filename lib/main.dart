
import 'package:e_nagarpalika/service/locale_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'views/municipal/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Locale savedLocale = await LocaleManager.getLocale();
  debugPrint(savedLocale.languageCode);
  runApp(MyApp(savedLocale: savedLocale));
}

class MyApp extends StatefulWidget {
  Locale savedLocale;

  MyApp({Key? key, required this.savedLocale}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();

  static void setLocale(BuildContext  context,Locale newLocale){
    _MyAppState? state = context. findAncestorStateOfType<_MyAppState>();
    state?._changeLocale(newLocale);
  }
}

class _MyAppState extends State<MyApp> {

  late Locale _currentLocale;
  void _changeLocale(Locale newLocale) {
    setState(() {
      _currentLocale = newLocale;
      LocaleManager.setLocale(context, newLocale);
    });
  }


  @override
  void initState() {
    super.initState();
    _currentLocale=widget.savedLocale;
  }


 @override


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('ne'), // nepali
      ],
      locale: _currentLocale,
      home:  HomeScreen(),
    );
  }


}



