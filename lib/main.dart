import 'package:catalogue/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:catalogue/theme/theme.dart' as theme;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return PlatformApp(
      title: 'Flutter Demo',
      material: (_, __) => theme.material,
      cupertino: (_, __) => theme.cupertino,
      home: MainPage(),
    );
  }
}