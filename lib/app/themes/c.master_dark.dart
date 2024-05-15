part of '_index.dart';

final kThemeMasterDark = ThemeData(
  platform: TargetPlatform.iOS,
  // ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
  //* Brightness.dark have default secondary/accent color
  // brightness: Brightness.dark,
  // primarySwatch: ThColor.dark.brand,
  //* colorScheme will replace primarySwatch
  //* colorScheme have default primary & sencodary color
  colorScheme: const ColorScheme.dark(),
  // colorScheme: const ColorScheme.dark().copyWith(
  //   primary: ThColor.dark.primary,
  //   secondary: ThColor.dark.secondary,
  // ),
  // ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
  cupertinoOverrideTheme: const CupertinoThemeData().copyWith(
    brightness: Brightness.dark,
  ),
  appBarTheme: const AppBarTheme().copyWith(
    color: ThColor.dark.appBarBackground,
    foregroundColor: ThColor.dark.appBarForeground,
    systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
      statusBarBrightness: Brightness.dark, //for iPhone
      statusBarColor: ThColor.dark.statusBar,
      statusBarIconBrightness: Brightness.light,
    ),
  ),
  // ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
  inputDecorationTheme: const InputDecorationTheme().copyWith(
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.deepPurpleAccent,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    errorStyle: const TextStyle(color: Colors.red),
    errorBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    focusedErrorBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    isDense: true,
    alignLabelWithHint: true,
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      // borderSide: BorderSide(color: Colors.black54),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.grey.withOpacity(0.6)),
    ),
    labelStyle: const TextStyle(
      decorationStyle: TextDecorationStyle.solid,
    ),
  ),

  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      shape: const StadiumBorder(),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: Colors.blue,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      // shape: const StadiumBorder(),
      // shape: BeveledRectangleBorder(
      //   borderRadius: BorderRadius.circular(10.0),
      // ),
    ),
  ),
);
