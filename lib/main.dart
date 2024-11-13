import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:siabsen/views/attendance_page.dart';
import 'package:siabsen/views/main_page.dart';
import 'package:siabsen/views/splash_page.dart';

void main() {
  runApp(const SiAbsen());
}

class SiAbsen extends StatelessWidget {
  const SiAbsen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Si Absen',
          theme: ThemeData(useMaterial3: true),
          initialRoute: '/',
          routes: {
            '/': (context) => const SplashPage(),
            '/main_page': (context) => const MainPage(),
            '/attendance_page': (context) => const AttendancePage(),
          },
        );
      },
    );
  }
}
