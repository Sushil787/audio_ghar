import 'package:audio_ghar/core/constants/media_asset.dart';
import 'package:audio_ghar/core/theme/gap.dart';
import 'package:flutter/material.dart';

class CustomTitleWidget extends StatelessWidget {
  String title;
  CustomTitleWidget({
    super.key,
    required this.title,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          SizedBox(
            height: 40,
            width: 40,
            child: Image.asset(IconAssets.appIcon),
          ),
          HorizontalGap.m,
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
