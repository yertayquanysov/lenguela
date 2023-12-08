import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lenguela/features/content/presentation/pages/add_content_page.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.ubuntuTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
      ),
      home: const AddContentPage(),
    );
  }
}
