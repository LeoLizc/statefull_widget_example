import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/color_utils.dart';
import 'pages/color_selection_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _color = '5F7161';

  // vamos a convertir este widget a uno con estado
  void changeColor(String value) {
    // vamos a usar setState para actualizar el color
    print(value);
    setState(() {
      // vamos a usar ColorUtils para convertir el valor en un color
      // y lo vamos a asignar a _color
      _color = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // vamos a usar GetMaterialApp para pdoer usar un diálogo sin context
    return GetMaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: ColorUtils.CreateMaterialColor(_color),
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: ColorSelectionPage(
        callback: changeColor,
      ), // vamos a pasarle updatePrimarySwatchColor como función
    );
  }

  void updatePrimarySwatchColor(String value) {}
}
