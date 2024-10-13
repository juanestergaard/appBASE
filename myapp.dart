import 'package:codificacion_pae/app/routes/router.dart';
import 'package:codificacion_pae/app/service/themeservice.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:go_router/go_router.dart';

//import '../main.dart';
//import 'pagesview.dart/homeview.dart';

//cambie de stale a stefull
class MyApp extends StatefulWidget {
  final int themeIndex;
  //final double sizeIndex;

  const MyApp({
    super.key,
    required this.themeIndex,
    /* required this.sizeIndex*/
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with RouterMixin {
  @override
  Widget build(BuildContext context) {
    return
        /*MultiProvider(
      providers: [
        ChangeNotifierProvider<Themeservice>(
          create: (context) => Themeservice(themeIndex),
        ),
        // Aquí puedes agregar otros providers en el futuro
        // ChangeNotifierProvider<OtroService>(create: (_) => OtroService()),
      ],
      child:*/
        Consumer<Themeservice>(
      builder: (context, themeService, _) {
        return MaterialApp.router(
          routerConfig: router, //v10
          debugShowCheckedModeBanner: false, //v10
          //title: 'SharedPreferences Demo',//v9
          //home: const SharedPreferencesDemo(),//v9
          theme: themeService.getTheme(),
        );
      },
    ); //,
    //);
    /*ChangeNotifierProvider<Themeservice>(
      create: (context) => Themeservice(themeIndex),
      child: Consumer<Themeservice>(
        builder: (context, themeService, _) {
          return MaterialApp(
            title: 'SharedPreferences Demo',
            home: const SharedPreferencesDemo(),
            theme: themeService.getTheme(),
          );
        },
      ),
    );*/
  }
}

/*v8
class MyApp extends StatelessWidget {
  final int themeIndex;

  const MyApp({super.key, required this.themeIndex});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Themeservice>(
          create: (context) => Themeservice(themeIndex),
        ),
        // Aquí puedes agregar otros providers en el futuro
        // ChangeNotifierProvider<OtroService>(create: (_) => OtroService()),
      ],
      child: Consumer<Themeservice>(
        builder: (context, themeService, _) {
          return MaterialApp(
            title: 'SharedPreferences Demo',
            home: const SharedPreferencesDemo(),
            theme: themeService.getTheme(),
          );
        },
      ),
    );
    /*ChangeNotifierProvider<Themeservice>(
      create: (context) => Themeservice(themeIndex),
      child: Consumer<Themeservice>(
        builder: (context, themeService, _) {
          return MaterialApp(
            title: 'SharedPreferences Demo',
            home: const SharedPreferencesDemo(),
            theme: themeService.getTheme(),
          );
        },
      ),
    );*/
  }
}

*/