import 'package:app/widgets/Appcolor.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

import 'Pages/startpages/log_in.dart';
import 'Pages/startpages/welcome_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
  AppColors colors(context) => Theme.of(context).extension<AppColors>()!;
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  ThemeMode _themeMode = ThemeMode.system;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangePlatformBrightness() {
    super.didChangePlatformBrightness();
    var brightness = View.of(context).platformDispatcher.platformBrightness;
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
    //     statusBarColor: Colors.white,
    //     statusBarIconBrightness: Brightness.dark));
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).size.width);

    return GetMaterialApp(
      initialRoute: '/',
      theme: ThemeData().copyWith(
          colorScheme: const ColorScheme.light(
              background: Colors.black,
              error: Color.fromRGBO(249, 249, 249, 1)),
          bottomAppBarTheme:
              const BottomAppBarTheme().copyWith(color: Colors.white),
          brightness: Brightness.light,
          listTileTheme: ListTileThemeData().copyWith(iconColor: Colors.black)),
      darkTheme: ThemeData().copyWith(
          brightness: Brightness.dark,
          bottomAppBarTheme: const BottomAppBarTheme()
              .copyWith(color: const Color.fromRGBO(42, 47, 55, 1)),
          colorScheme: const ColorScheme.dark(
              background: Colors.white, error: Color.fromRGBO(20, 20, 22, 1)),
          listTileTheme: ListTileThemeData().copyWith(iconColor: Colors.white)),
      themeMode: _themeMode,
      routes: {
        "/signin": (context) => SignIn(),
      },
      home: Welcome_Page(),
    );
  }

  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }
}
