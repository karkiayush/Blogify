import 'package:blogify/providers/obsecure_text_provider.dart';
import 'package:blogify/screens/signup_screen.dart';
import 'package:blogify/shared/string_value.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ObsecureTextProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: StringValue.appTitle,
        theme: ThemeData(
          textTheme: GoogleFonts.bricolageGrotesqueTextTheme(
              Theme.of(context).textTheme),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SignupScreen(),
      ),
    );
  }
}
