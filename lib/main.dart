import 'package:flutter/material.dart';
import 'package:legiit/Constants/appcolors.dart';
import 'package:legiit/Routes/routes.dart';
import 'package:legiit/utils/navigator_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: NavigatorService.navigatorKey,
      routes: AppRoutes.routes,
      initialRoute: AppRoutes.loginViewpage,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: AppColors.blue),
        useMaterial3: true,
      ),
     // home:const LoginView()
    );
  }
}

