import 'package:flutter/material.dart';
import 'ITheme.dart';
import 'package:flutter/src/material/theme_data.dart';

class LightTheme extends ITheme {
  static LightTheme? _instace;
  static LightTheme get instance {
    if (_instace != null) return _instace!;
    _instace = LightTheme._init();
    return _instace!;
  }

  LightTheme._init();
  final _lightTheme = ThemeData.light();

  @override
  // TODO: implement data
  ThemeData get data => ThemeData(
        appBarTheme: _lightTheme.appBarTheme.copyWith(
          backgroundColor: Colors.white,
          centerTitle: true,
          
        ),
         hintColor:Colors.green ,
        colorScheme: _lightTheme.colorScheme
            .copyWith(primary: Colors.white, onPrimary: colors.lynch),
      );
}
