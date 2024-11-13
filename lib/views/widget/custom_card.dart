import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:siabsen/views/utils/helper.dart';

class CustomCard extends StatelessWidget {
  final String imageAsset;
  final String? timeOfAbsence;
  final String? latitude;
  final String? longitude;
  final String? description;

  const CustomCard({
    super.key,
    required this.imageAsset,
    this.timeOfAbsence,
    this.latitude,
    this.longitude,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cLightGrey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: Image.asset(
                imageAsset,
                width: screenWidth(context),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: REdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Berhasi absen pada',
                    style: subtitle2.copyWith(fontWeight: bold),
                  ),
                  verticalSpaceSuperTiny,
                  Text(timeOfAbsence ?? '', style: subtitle3),
                  verticalSpaceTiny,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Latitude',
                            style: subtitle2.copyWith(fontWeight: bold),
                          ),
                          verticalSpaceSuperTiny,
                          Text(latitude ?? '', style: subtitle3),
                        ],
                      ),
                      verticalSpaceTiny,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Longitude',
                            style: subtitle2.copyWith(fontWeight: bold),
                          ),
                          verticalSpaceSuperTiny,
                          Text(longitude ?? '', style: subtitle3),
                        ],
                      ),
                    ],
                  ),
                  verticalSpaceTiny,
                  Text(
                    description ?? '',
                    style: subtitle3,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
