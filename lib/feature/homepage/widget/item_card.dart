import 'package:audio_ghar/core/theme/app_color.dart';
import 'package:audio_ghar/core/theme/gap.dart';
import 'package:audio_ghar/feature/homepage/data/model/audio_book_model.dart';
import 'package:flutter/material.dart';

Card customAudioCard(BuildContext context, AudioBook audioBook) {
  return Card(
    elevation: 1,
    child: Container(
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(audioBook.bookImageUrl),
                  ),
                ),
                alignment: Alignment.topRight,
                child: Container(
                  decoration: BoxDecoration(
                      color: LightColor.grey.withOpacity(.4),
                      borderRadius: BorderRadius.circular(10)),
                  height: 40,
                  width: 40,
                  child: const Icon(
                    Icons.music_note,
                    color: LightColor.orange,
                  ),
                )),
          ),
          VerticalGap.s,
          buildRowItem(
            context,
            audioBook.bookName,
            buildRating(
              context,
              audioBook.rating.toString(),
              const Icon(
                Icons.star,
                size: 20,
                color: LightColor.orange,
              ),
            ),
          ),
          Text(
            audioBook.author,
            style: Theme.of(context).textTheme.labelSmall,
          ),
          buildRowItem(
            context,
            "NPR ${audioBook.price}",
            const Icon(
              Icons.play_circle_outline_rounded,
              color: LightColor.secondaryColor,
              size: 30,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget buildRating(BuildContext context, String firstItem, Widget secondItem) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        firstItem,
        style: Theme.of(context).textTheme.labelMedium,
        overflow: TextOverflow.fade,
      ),
      secondItem
    ],
  );
}

Widget buildRowItem(BuildContext context, String firstItem, Widget secondItem) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      SizedBox(
        // height: 26,
        width: 100,
        child: Text(
          firstItem,
          style: Theme.of(context).textTheme.labelMedium,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
      ),
      secondItem
    ],
  );
}
