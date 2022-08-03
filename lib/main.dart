import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sooq_okaz/routes.dart';
import 'package:sooq_okaz/routes/splach_screen.dart';
import 'package:sooq_okaz/utils/helper/constant_color.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('ar', ''),
          ],
          locale: const Locale('ar'),
          debugShowCheckedModeBanner: false,
          title: 'Sooq Qkaz',
          theme: ThemeData(
            scaffoldBackgroundColor: ConstantColor.white,
          ),
          initialRoute: RouteGenerator.splashScreen,
          onGenerateRoute: RouteGenerator.generateRoutes,
        );
      },
    );
  }
}
