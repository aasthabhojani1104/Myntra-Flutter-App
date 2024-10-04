import 'package:flutter/material.dart';
import 'package:myntra_ui/features/Product_DetailPage/product_detail.dart';
import 'package:myntra_ui/features/landing_page/landing_page.dart';
import 'package:myntra_ui/features/profile/profile_without_login.dart';
import 'package:myntra_ui/foundation/theme/colors.dart';

import 'features/Splash_Screen/splash_screen.dart';
import 'features/home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontSize: 14.5,
            letterSpacing: 0.15,
            color: AppColor.headinglarg,
          ),
          bodyMedium: TextStyle(
            color: AppColor.bodyTextColor1,
            fontSize: 14,
          ),
          bodySmall: TextStyle(
            color: AppColor.bodyTextColorSmall,
            fontSize: 11,
          )
        ),

      ),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => SplashScreen(),
      //   '/home': (context) => HomePage(),
      // },

      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
