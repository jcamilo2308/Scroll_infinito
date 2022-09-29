import 'package:flutter/material.dart';
import 'package:usodeapi/Pages/Home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplicacion de Gifs',
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) =>
        const MyHomeApp(title: 'Aplicación de Gifs')
      },
    );
  }
}
