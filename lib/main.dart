import 'package:flutter/material.dart';
import 'package:pomodoro/data.dart';
import 'package:pomodoro/homepage.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefs.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {//maven baloo2 rajdhani sairaSemiCondensed itim coda
    return MaterialApp(
      title: 'Flutter Demo',

      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        fontFamily: "Sofia",
        switchTheme: SwitchThemeData(
            thumbColor: MaterialStateProperty.all(Colors.white),
            trackColor: MaterialStateProperty.resolveWith((states) =>
            states.contains(MaterialState.selected) ? Colors.indigo : null)),
        primarySwatch: Colors.indigo,
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Ubuntu',
        primarySwatch: Colors.indigo,
      ),
      home: const HomePage(),
    );
  }
}


