import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'view/login_view.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;

  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        canvasColor: Colors.white,
        cardColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.light,
          surface: Colors.white,
          onSurface: Colors.green.shade900,
        ),
        textTheme: ThemeData.light().textTheme.apply(
          bodyColor: Colors.green.shade900,
          displayColor: Colors.green.shade900,
        ),
        primaryTextTheme: ThemeData.light().textTheme.apply(
          bodyColor: Colors.green.shade900,
          displayColor: Colors.green.shade900,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(color: Colors.green),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.green),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0E2F1F),
        canvasColor: const Color(0xFF0E2F1F),
        drawerTheme: const DrawerThemeData(
          backgroundColor: Color(0xFF133E28),
        ),
        colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: Color(0xFF86EFAC),       // green.shade100 equiv
          onPrimary: Color(0xFF0E2F1F),
          secondary: Color(0xFFBBF7D0),     // green.shade200 equiv
          onSecondary: Color(0xFF0E2F1F),
          error: Colors.red,
          onError: Colors.white,
          surface: Color(0xFF133E28),
          onSurface: Color(0xFF86EFAC),
        ),
        textTheme: ThemeData.dark().textTheme.apply(
          bodyColor: const Color(0xFF86EFAC),
          displayColor: const Color(0xFF86EFAC),
        ),
        primaryTextTheme: ThemeData.dark().textTheme.apply(
          bodyColor: const Color(0xFF86EFAC),
          displayColor: const Color(0xFF86EFAC),
        ),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: const TextStyle(color: Color(0xFFBBF7D0)),
          filled: true,
          fillColor: Colors.white.withValues(alpha: 0.05),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Color(0xFF86EFAC), width: 1.5),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green.shade700,
            foregroundColor: const Color(0xFF86EFAC),
          ),
        ),
        cardTheme: CardThemeData(
          color: Colors.white.withValues(alpha: 0.07),
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        dividerColor: Colors.white.withValues(alpha: 0.1),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF133E28),
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Color(0xFF86EFAC),
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          iconTheme: IconThemeData(color: Color(0xFF86EFAC)),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xFF4ADE80),
          foregroundColor: Color(0xFF0E2F1F),
        ),
        segmentedButtonTheme: SegmentedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.selected)) {
                return const Color(0xFF166534); // dark green selected
              }
              return Colors.white.withValues(alpha: 0.05);
            }),
            foregroundColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.selected)) {
                return const Color(0xFF86EFAC);
              }
              return const Color(0xFF86EFAC).withValues(alpha: 0.7);
            }),
            side: WidgetStateProperty.all(
              const BorderSide(color: Color(0xFF166534), width: 1),
            ),
          ),
        ),
        listTileTheme: const ListTileThemeData(
          textColor: Color(0xFF86EFAC),
          iconColor: Color(0xFF86EFAC),
        ),
        checkboxTheme: CheckboxThemeData(
          fillColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) return const Color(0xFF4ADE80);
            return Colors.transparent;
          }),
          checkColor: WidgetStateProperty.all(const Color(0xFF0E2F1F)),
          side: const BorderSide(color: Color(0xFF86EFAC)),
        ),
        iconTheme: const IconThemeData(color: Color(0xFF86EFAC)),
        snackBarTheme: const SnackBarThemeData(
          backgroundColor: Color(0xFF133E28),
          contentTextStyle: TextStyle(color: Color(0xFF86EFAC)),
        ),
        chipTheme: ChipThemeData(
          backgroundColor: Colors.white.withValues(alpha: 0.05),
          labelStyle: const TextStyle(color: Color(0xFF86EFAC)),
          side: const BorderSide(color: Color(0xFF166534)),
        ),
      ),
      themeMode: _isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: LoginView(isDarkMode: _isDarkMode, onToggleTheme: _toggleTheme),
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    );
  }
}
