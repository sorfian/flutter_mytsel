import 'package:flutter/material.dart';

import 'app/presentation/pages/category_details/pages.dart';
import 'app/presentation/pages/home/pages.dart';
import 'app/presentation/pages/login/pages.dart';
import 'app/presentation/pages/product_details/pages.dart';
import 'app/presentation/pages/search/pages.dart';
import 'app/presentation/widgets/search/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/login": (context) => const LoginPage(),
        "/home": (context) => const HomePage(),
        "/category-details": (context) => const CategoryDetailsPage(),
        "/search": (context) => const SearchPage(),
        ResultPage.routeName: (context) => const ResultPage(),
        ProductDetailsPage.routeName: (context) => const ProductDetailsPage(),
      },
      initialRoute: "/login",
      debugShowCheckedModeBanner: false,
      title: 'MyTsel App',
      theme: ThemeData(
        // primarySwatch: Colors.red,
        fontFamily: "ProductSans",
        sliderTheme: const SliderThemeData(
          inactiveTrackColor: Color(0xFFF1F2F6),
          activeTrackColor: Color(0xFFEC2028),
          // thumbColor: Colors.red,
          rangeThumbShape: CustomRoundRangeSliderThumbShape(
            enabledThumbRadius: 16,
            elevation: 5,
          ),
          trackHeight: 8,
          rangeTrackShape: CustomRoundedRectRangeSliderTrackShape(),
          overlayColor: Color(0xFFEC2028),
        ),
      ),
      // home: const LoginPage(),
    );
    // return FutureBuilder(
    //   future: Future.delayed(const Duration(seconds: 3)),
    //   builder: (context, snapshot) {
    //     if (snapshot.connectionState == ConnectionState.waiting) {
    //       return const MaterialApp(
    //         debugShowCheckedModeBanner: false,
    //         home: Scaffold(
    //           backgroundColor: Color(0xFFEC2028),
    //           body: SplashScreen(),
    //         ),
    //       );
    //     } else {
    //       return MaterialApp(
    //         debugShowCheckedModeBanner: false,
    //         title: 'MyTsel App',
    //         theme: ThemeData(
    //           primarySwatch: Colors.red,
    //         ),
    //         home: const LoginPage(),
    //       );
    //     }
    //   },
    // );
  }
}
