import 'package:assignment_coding_junior/payment_success_page.dart';
import 'package:assignment_coding_junior/profile_page.dart';
import 'package:assignment_coding_junior/utils/routes.dart';
import 'package:flutter/material.dart';

import 'course_details_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => const PhotoshopCoursePage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.paymentRoute:(context) => const PaymentSuccessApp(),
      },
    );
  }
}
