import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color(0xff998CEB)
  );

  var kDarkColorScheme = ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor:Color(0xff793FDF),
    );
void main() {
  runApp(
    MaterialApp(
    darkTheme:ThemeData.dark().copyWith(
      useMaterial3: true,
      colorScheme: kDarkColorScheme,

      cardTheme: CardTheme().copyWith(
        color: kDarkColorScheme.secondaryContainer,
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8
        )
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: kDarkColorScheme.primaryContainer,
          foregroundColor: kDarkColorScheme.onPrimaryContainer
        )
      ), 
    ),
    theme: ThemeData().copyWith(
      useMaterial3: true,
      colorScheme: kColorScheme,
      appBarTheme: AppBarTheme().copyWith(
        backgroundColor: kColorScheme.inversePrimary,
        foregroundColor: kColorScheme.onSecondaryContainer,
      ),
      cardTheme: CardTheme().copyWith(
        color: kColorScheme.secondaryContainer,
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8
        )
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: kColorScheme.primaryContainer
        )
      ), 
      textTheme: ThemeData().textTheme.copyWith(
        titleLarge: TextStyle(
        fontWeight: FontWeight.bold,
        color: kColorScheme.onSecondaryContainer,
        fontSize: 18
        )
      )
      ),
      themeMode: ThemeMode.system,
      home: Expenses(),
      debugShowCheckedModeBanner: false,
    )
  );
}

