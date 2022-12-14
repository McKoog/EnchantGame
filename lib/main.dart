import 'package:enchantment_game/screens/enchant_screen/enchant_screen.dart';
import 'package:enchantment_game/screens/hunting_field_screen/hunting_field_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: ProviderScope(
          child: Container(
            color: const Color.fromRGBO(78, 78, 78, 1),
            child: PageView(
              children: const [
                EnchantScreen(),
                HuntingFieldScreen()
              ],
            ),
          ),
            //child: EnchantScreen()
        ),
      ),
    );
  }
}