import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../routes/routes.dart';
//import '../service/sizeservice.dart';
import '../service/sizeservice.dart';
import '../service/themeservice.dart';
import '../widget/boton_prueba.dart';

class SharedPreferencesDemo extends StatefulWidget {
  const SharedPreferencesDemo({super.key});

  @override
  SharedPreferencesDemoState createState() => SharedPreferencesDemoState();
}

class SharedPreferencesDemoState extends State<SharedPreferencesDemo> {
  @override
  Widget build(BuildContext context) {
    final fontSizeProvider = Provider.of<Sizeservice>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('SharedPreferences Demo'),
        actions: [
          Consumer<Themeservice>(
            builder: (context, themeService, _) {
              return IconButton(
                onPressed: () {
                  themeService.toggleTheme2();
                },
                icon: Icon(themeService.currentThemeIndex == 0
                        ? Icons.sunny
                        //: themeService.currentThemeIndex == 1
                        : Icons.dark_mode
/*
                  themeService.currentThemeIndex == 0
                      ? Icons.sunny
                      : themeService.currentThemeIndex == 1
                          ? Icons.dark_mode
                          : Icons.brightness_3,
                        */
                    ),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /*
            const Text('Theme Switcher'),
            Consumer<Themeservice>(
              builder: (context, themeService, _) {
                return FloatingActionButton(
                  onPressed: () {
                    themeService.toggleTheme();
                  },
                  child: Icon(
                    themeService.currentThemeIndex == 0
                        ? Icons.light_mode
                        : themeService.currentThemeIndex == 1
                            ? Icons.dark_mode
                            : Icons.brightness_3,
                  ),
                );
              },
            ),
            */
            /*
            Consumer<Themeservice>(
              builder: (context, themeService, _) {
                return FloatingActionButton(
                  onPressed: () {
                    themeService.cambio(2);
                  },
                  child: const Text('green'),
                );
              },
            ),
            */
            //de aca
            /*
            Consumer<Themeservice>(
              builder: (context, themeService, _) {
                return FloatingActionButton(
                  onPressed: () {
                    themeService.cambio(3);
                  },
                  child: const Text('yellow'),
                );
              },
            ),
            */
            const Text('TAMANO',
                style: TextStyle(fontSize: 10), textAlign: TextAlign.center),
            Text('TAMANO',
                style: TextStyle(fontSize: fontSizeProvider.currentSizeIndex),
                textAlign: TextAlign.center),
/*
Consumer<Sizeservice>(
              builder: (context, sizeService, _) {
                return Text('TAMANO VARIABLE',
            style: TextStyle(fontSize: SizeIndex),
            textAlign: TextAlign.center);
              },
            ),
*/
/*
            Text('TAMANO VARIABLE',
            style: TextStyle(fontSize: ),
            textAlign: TextAlign.center),
*/
            BotonPrueba(
              iconData: Icons.facebook,
              buttonText: 'CONFIGURACIÓN',
              onTap: () {
                GoRouter.of(context).pushNamed(
                  Routes.confi,
                );
              },
            ),
            //hasta aca
/*
            Consumer<ThemeService>(builder: (context, themeService, _){
              return FloatingActionButton(onPressed: onPressed)
            },),
*/
          ],
        ),
      ),
    );
  }
}
