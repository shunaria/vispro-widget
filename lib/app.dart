// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';
import 'supplemental/cut_corners_border.dart';

import 'home.dart';
import 'backdrop.dart'; 
import 'login.dart';
import 'colors.dart';
import 'model/product.dart'; 
import 'category_menu_page.dart';




// TODO: Convert ShrineApp to stateful widget (104)
class ShrineApp extends StatefulWidget {
  const ShrineApp({Key? key}) : super(key: key);

  @override
  _ShrineAppState createState() => _ShrineAppState();
}

class _ShrineAppState extends State<ShrineApp> {
  Category _currentCategory = Category.all;

  void _onCategoryTap(Category category) {
    setState(() {
      _currentCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GACER',
      initialRoute: '/login',
      routes: {
        '/login': (BuildContext context) => const LoginPage(),
        '/': (BuildContext context) => Backdrop(
              currentCategory: _currentCategory, // ✅ use state here
              frontLayer: HomePage(category: _currentCategory), // pass down
              backLayer: CategoryMenuPage( // ✅ replace with menu
                currentCategory: _currentCategory,
                onCategoryTap: _onCategoryTap,
              ),
              frontTitle: const Text('GACER'),
              backTitle: const Text('MENU'),
            ),
      },
      theme: _kShrineTheme,
    );
  }
}


//Build a Shrine Theme (103)
final ThemeData _kShrineTheme = _buildShrineTheme();

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light(useMaterial3: true);
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: cyan,
      onPrimary:purple,
      secondary: purple,
      error: kShrineErrorRed,
    ),
    textTheme: _buildShrineTextTheme(base.textTheme),
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: Color.fromARGB(255, 74, 26, 233),
    ),
    appBarTheme: const AppBarTheme(
      foregroundColor: Color.fromARGB(197, 253, 251, 251),
      backgroundColor: Color.fromARGB(170, 39, 60, 139),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: CutCornersBorder(),
      focusedBorder: CutCornersBorder(
        borderSide: BorderSide(
          width: 2.0,
          color: Color.fromARGB(255, 183, 45, 186),
        ),
      ),
      floatingLabelStyle: TextStyle(
        color: Color.fromARGB(255, 43, 68, 44),
      ),
    ),
  );
}
//Build a Shrine Text Theme (103)
TextTheme _buildShrineTextTheme(TextTheme base) {
  return base
      .copyWith(
        headlineSmall: base.headlineSmall!.copyWith(
          fontWeight: FontWeight.w500,
        ),
        titleLarge: base.titleLarge!.copyWith(
          fontSize: 18.0,
        ),
        bodySmall: base.bodySmall!.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
        ),
        bodyLarge: base.bodyLarge!.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        displayColor: Color.fromARGB(255, 222, 169, 23),
        bodyColor: Color.fromARGB(255, 222, 169, 23),
      );
}


