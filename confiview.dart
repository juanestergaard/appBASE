import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
//import 'package:provider/provider.dart';

import '../routes/routes.dart';
//import '../service/themeservice.dart';
import '../widget/boton_prueba.dart';

class Confiview extends StatefulWidget {
  const Confiview({super.key});

  @override
  State<Confiview> createState() => ConfiviewState();
}

class ConfiviewState extends State<Confiview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CONFIGURACION'),
        /*
        actions: [
          Consumer<Themeservice>(
            builder: (context, themeService, _) {
              return IconButton(
                onPressed: () {
                  themeService.toggleTheme();
                },
                icon: Icon(
                  themeService.currentThemeIndex == 0
                      ? Icons.sunny
                      : themeService.currentThemeIndex == 1
                          ? Icons.dark_mode
                          : Icons.brightness_3,
                ),
              );
            },
          ),
        ],
        */
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('CONFIGURACION'),
/*
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
            BotonPrueba(
              iconData: Icons.facebook,
              buttonText: 'HOME',
              onTap: () {
                //print('Share Page');
                GoRouter.of(context).pushNamed(
                  Routes.home,
                );
              },
            ),
            BotonPrueba(
              iconData: Icons.facebook,
              buttonText: 'Configuracion Theme',
              onTap: () {
                //print('Share Page');
                GoRouter.of(context).pushNamed(
                  Routes.confiTheme,
                );
              },
            ),
            BotonPrueba(
              iconData: Icons.facebook,
              buttonText: 'Configuracion Size',
              onTap: () {
                //print('Share Page');
                GoRouter.of(context).pushNamed(
                  Routes.confiSize,
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
