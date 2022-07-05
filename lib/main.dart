import 'package:admin/auth/auth_util.dart';
import 'package:admin/auth/firebase_user_provider.dart';
import 'package:admin/constants.dart';
import 'package:admin/controllers/MenuController.dart';
import 'package:admin/login/login_widget.dart';
import 'package:admin/screens/main/main_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: FirebaseOptions(
      apiKey: "AIzaSyA8mLyxDjZx9xYrZtOFOlV5AzU3ickglls",
      authDomain: "cmys-4a12a.firebaseapp.com",
      projectId: "cmys-4a12a",
      storageBucket: "cmys-4a12a.appspot.com",
      messagingSenderId: "590153768537",
      appId: "1:590153768537:web:457672588fdbdba89fdb48",
      measurementId: "G-FZ0DFL9YQJ"
  ),);

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>();
}

class _MyAppState extends State<MyApp> {
  Locale _locale;
  ThemeMode _themeMode = ThemeMode.system;
  Stream<UrFitnessFirebaseUser> userStream;
  UrFitnessFirebaseUser initialUser;
  bool displaySplashImage = true;
  final authUserSub = authenticatedUserStream.listen((_) {});

  void setLocale(Locale value) => setState(() => _locale = value);
  void setThemeMode(ThemeMode mode) => setState(() {
    _themeMode = mode;
  });

  @override
  void initState() {
    super.initState();
    userStream = urFitnessFirebaseUserStream()
      ..listen((user) => initialUser ?? setState(() => initialUser = user));
    Future.delayed(
        Duration(seconds: 1), () => setState(() => displaySplashImage = false));
  }

  @override
  void dispose() {
    authUserSub.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CMYS',

      locale: _locale,
      supportedLocales: const [Locale('en', '')],
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      home:
      initialUser == null || displaySplashImage
          ? Container(
        color: Colors.transparent,
        child: Builder(
          builder: (context) => Image.asset(
            'assets/images/2021-12-03.jpg',
            fit: BoxFit.fill,
          ),
        ),
      )
          : currentUser.loggedIn
          ?

      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuController(),
          ),
        ],
        child: MainScreen(),
      ) : LoginWidget(),
    );
  }
}

