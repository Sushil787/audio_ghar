// ignore: file_names
import 'package:audio_ghar/core/theme/context_dimension.dart';
import 'package:flutter/material.dart';

class BuildSearchBar extends StatelessWidget {
  const BuildSearchBar({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 40,
            width: context.deviceWidth * .8,
            child: const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "search for audio books"),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: const BorderRadius.all(Radius.circular(5))),
            child: const Icon(
              size: 25,
              Icons.filter_list_outlined,
            ),
          )
        ],
      ),
    );
  }
}
