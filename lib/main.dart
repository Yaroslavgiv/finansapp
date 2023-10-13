import 'package:app_kesh_accaunt/app/ui/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/ui/pages/auch/accaunt_page.dart';
import 'app/ui/pages/auch/profil_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      // home: const HomePage(),
      home: const ProfilScreen(),
    );
  }
}
