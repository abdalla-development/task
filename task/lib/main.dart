import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/provider.dart';
import 'home.dart';

void main() {
  runApp(MultiProvider(
      providers:[
        ChangeNotifierProvider(create: (_) => UserCardProvider(),),
      ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
