import 'package:flutter/material.dart';
import 'package:shared_prefrences/shared_prefrence.dart';

import 'home1.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  CacheData.cacheInitialization();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirstScreen(),
    );
  }
}
