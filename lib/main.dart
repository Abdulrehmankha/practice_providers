import 'package:flutter/material.dart';
import 'package:practice_pro/screens/clients_environment/provider_user_list.dart';
import 'package:practice_pro/screens/homepage.dart';
import 'package:practice_pro/screens/introscreen.dart';
import 'package:practice_pro/screens/number_controller/numberscontroller.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NumbersController()),
        ChangeNotifierProvider(create: (context)=> ProviderUserList()..getUser()),
      ],
        child: const MyApp()
    ),

  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // declaration provider
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Practice project',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: IntroScreen(),
    );
  }
}

