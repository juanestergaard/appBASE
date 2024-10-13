import 'package:codificacion_pae/app/pagesview.dart/configuracion_size.dart';
import 'package:codificacion_pae/app/pagesview.dart/configuracion_theme.dart';
import 'package:codificacion_pae/app/pagesview.dart/confiview.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../myapp.dart';
import '../pagesview.dart/homeview.dart';
import 'routes.dart';

mixin RouterMixin on State<MyApp> {
  final _router = GoRouter(
    initialLocation: '/',
    //errorBuilder: (_, state) => ErrorView(goRouterState: state),
    routes: [
      ShellRoute(
        builder: (context, state, child) {
          return //HomeScaffold(child: child);

              Scaffold(
            body: child,
          );
        },
        routes: [
          GoRoute(
            name: Routes.home,
            path: '/',
            builder: (_, __) => const SharedPreferencesDemo(),
          ),
          GoRoute(
            name: Routes.confi, //era pae a secas
            path: '/CONFI',
            builder: (_, __) {
              //final id = state.params['id']!; //para obtener datos
              return const Confiview(
                  //id: int.parse(id), //parse string a int
                  );
            },
          ),
          GoRoute(
            name: Routes.confiTheme, //era pae a secas
            path: '/confiTheme',
            builder: (_, __) {
              return const ConfiguracionTheme();
            },
          ),
          GoRoute(
            name: Routes.confiSize, //era pae a secas
            path: '/confiSize',
            builder: (_, __) {
              return const ConfiguracionSize();
            },
          ),
          //aca van las siguientes paginas
        ],
      ),
    ],
  );
  GoRouter get router =>
      _router; //es mejor si la definis _router en ves de mandarla directamente
}
