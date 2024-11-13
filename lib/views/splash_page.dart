import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:siabsen/views/utils/helper.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushNamedAndRemoveUntil(
          context,
          '/main_page',
          (route) => false,
        );
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/identification 1.png', width: 180.w),
            verticalSpaceMedium,
            Text(
              'SiAbsen',
              style: headline1.copyWith(color: cDarkBlue, fontWeight: bold),
            )
          ],
        ),
      ),
    );
  }
}