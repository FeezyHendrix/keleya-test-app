import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:keleya/routes.dart';
import 'package:keleya/screens/welcome.dart';
import 'package:keleya/theme.dart';
import 'package:keleya/utils/colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: kPrimaryColor, // transparent status bar
  ));

  runApp(Keleya(
    appRouter: AppRouter(),
  ));
}

class Keleya extends StatelessWidget {
  final AppRouter appRouter;

  const Keleya({Key? key, required this.appRouter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Keleya',
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      theme: theme(),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('de', ''),
      ],
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
