import 'dart:html';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Provider/Index/index.dart';
import 'Provider/Listas/listas.dart';
import 'Provider/PageControler/page_control.dart';
import 'pages/login/login.dart';

void main() {
  window.document.onContextMenu.listen((evt) => evt.preventDefault());
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PageControl()),
        ChangeNotifierProvider(create: (_) => Listas()),
        ChangeNotifierProvider(create: (_) => Indexs()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: LoginForm()),
    );
  }
}
