import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:siabsen/views/utils/helper.dart';
import 'package:siabsen/views/widget/custom_card.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: cLightGrey,
        elevation: 0,
        title: Row(
          children: [
            Image.asset(
              'assets/images/identification 1.png',
              width: 40.w,
              height: 40.h,
            ),
            horizontalSpaceSmall,
            Text('SiAbsen', style: subtitle1.copyWith(fontWeight: bold)),
          ],
        ),
      ),
      backgroundColor: cWhite,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            verticalSpaceMedium,
            RichText(
              text: TextSpan(
                text: 'Selamat datang di ',
                style: subtitle1.copyWith(color: cBlack),
                children: [
                  TextSpan(
                    text: 'SiAbsen \n',
                    style: subtitle1.copyWith(fontWeight: bold),
                  ),
                  TextSpan(
                    text: 'Jangan lupa absen untuk hari ini ...',
                    style: subtitle1,
                  )
                ],
              ),
            ),
            verticalSpaceSmall,
            const CustomCard(
              imageAsset: 'assets/images/Rectangle 3.png',
              timeOfAbsence: '2024-10-02 – 14:30',
              latitude: '-1.234567890',
              longitude: '107.98765432',
              description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            ),
            const CustomCard(
              imageAsset: 'assets/images/Rectangle 3.png',
              // timeOfAbsence: '2024-10-02 – 14:30',
              // latitude: '-1.234567890',
              // longitude: '107.98765432',
              // description:
              //     'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: cWhite,
        onPressed: () {
          log('FAB on click');
          Navigator.pushNamed(context, '/attendance_page');
        },
        label: Text(
          'Absen',
          style: button.copyWith(color: cBlack, fontWeight: bold),
        ),
        icon: Icon(Icons.add_a_photo_outlined, color: cBlack),
      ),
    );
  }
}
