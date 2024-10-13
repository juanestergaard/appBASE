// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../routes/routes.dart';
import '../service/sizeservice.dart';
//import '../service/themeservice.dart';
import '../widget/boton_prueba.dart';

class ConfiguracionSize extends StatefulWidget {
  const ConfiguracionSize({super.key});

  @override
  State<ConfiguracionSize> createState() => ConfiguracionSizeState();
}

class ConfiguracionSizeState extends State<ConfiguracionSize> {
  @override
  Widget build(BuildContext context) {
    final fontSizeProvider = Provider.of<Sizeservice>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('CONFIGURACION TAMAÑO'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('CONFIGURACION'),

            //de aca
/*
            Consumer<Sizeservice>(
              builder: (context, sizeService, _) {
                return FloatingActionButton(
                  onPressed: () {
                    sizeService.size(10);
                  },
                  child: const Text('NORMAL'),
                );
              },
            ),
*/
/*
            Consumer<Sizeservice>(
              builder: (context, sizeService, _) {
                return FloatingActionButton(
                  onPressed: () {
                    sizeService.size(20);
                  },
                  child: const Text('GRANDE'),
                );
              },
            ),
            */
            /*
            Consumer<Sizeservice>(
              builder: (context, sizeService, _) {
                return FloatingActionButton(
                  onPressed: () {
                    sizeService.size(30);
                  },
                  child: const Text('EXTRA GRANDE'),
                );
              },
            ),
*/
            Text(
              'Hello World',
              style: TextStyle(fontSize: fontSizeProvider.currentSizeIndex),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                fontSizeProvider.setFontSize(10.0);
              },
              child: const Text('Set Font Size to 10'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                fontSizeProvider.setFontSize(20.0);
              },
              child: const Text('Set Font Size to 20'),
            ),
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
