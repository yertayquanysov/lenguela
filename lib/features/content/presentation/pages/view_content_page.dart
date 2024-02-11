import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewContentPage extends StatelessWidget {
  const ViewContentPage({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: 800,
            child: RichText(
              text: TextSpan(
                children: text
                    .split(".")
                    .map((text) => TextSpan(
                          text: "$text.",
                          style: GoogleFonts.ptSans(fontSize: 30),
                        ))
                    .toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
