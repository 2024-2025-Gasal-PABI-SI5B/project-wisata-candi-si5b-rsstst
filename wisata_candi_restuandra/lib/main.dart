import 'package:flutter/material.dart';
import 'package:wisata_candi_restuandra/screens/detail_screen.dart';
import 'package:wisata_candi_restuandra/data/candi_data.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Candi',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: DetailScreen(candi: candiList[0]));
  }
}
