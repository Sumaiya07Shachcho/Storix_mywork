import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:storix/Screens/Home/themes.dart';

import 'package:storix/Screens/Home/Home.dart';
import 'package:storix/Screens/Registration/registration.dart';
import 'package:storix/Screens/Profile/profile.dart';

import 'package:storix/Screens/Welcome/welcome_screen.dart';
import 'package:storix/firebase/authentication/sign_up.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) =>ChangeNotifierProvider(
      create: (context)=> ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);
    // final _signin =
    //     SignUp(userName: "flutter boy", userEmail: "test@gmail.com", userPassword: "mahamud12345");
    // _signin.userRegister();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Storix',
        themeMode: themeProvider.themeMode,
        theme: MyThemes.lightTheme,
        darkTheme: MyThemes.darkTheme ,
        initialRoute: '/',
        routes: {
        '/': (context) => Home(),
        '/registration': (context) => const Registration(),
        // '/': (context) => const Home(),
        '/profile': (context) => const Profile(),
        // '/registration': (context) => const Registration(),
        },
        );

      }
    );
  }
