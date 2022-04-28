import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() => runApp(const AboutMeApp());

class AboutMeApp extends StatelessWidget {
  const AboutMeApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    
      home: HomePage(),
    );
  }
}
