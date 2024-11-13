import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:siabsen/views/utils/helper.dart';
import 'package:siabsen/views/widget/custom_form_field.dart';
import 'package:siabsen/views/widget/primary_button.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({super.key});

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  TextEditingController description = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cWhite,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpaceMedium,
                Container(
                  height: 350.h,
                  decoration: BoxDecoration(
                    color: cLightGrey,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Image.asset('assets/images/image.png', width: 180.w),
                  ),
                ),
                verticalSpaceMedium,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Latitude',
                          style: subtitle1.copyWith(fontWeight: bold),
                        ),
                        verticalSpaceSmall,
                        Text('-1.234567890', style: subtitle1),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Longitude',
                          style: subtitle1.copyWith(fontWeight: bold),
                        ),
                        verticalSpaceSmall,
                        Text('107.98765432', style: subtitle1),
                      ],
                    )
                  ],
                ),
                spacedDivider,
                Text('Keterangan', style: subtitle1.copyWith(fontWeight: bold)),
                verticalSpaceSmall,
                Form(
                  key: formKey,
                  child: CustomFormField(
                    controller: description,
                    hintText: 'Deskripsi',
                    keyboardType: TextInputType.multiline,
                    textInputAction: TextInputAction.done,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Deskripsi tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                ),
                verticalSpaceLarge,
                PrimaryButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        '/main_page',
                        (route) => false,
                      );
                    }
                  },
                  title: 'Kirim Absen',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
