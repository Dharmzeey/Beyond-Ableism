import 'package:beyond_ableism/config/constants/dimensions.dart';
import 'package:flutter/material.dart';

class TalentSkillShowcaseWidget extends StatelessWidget {
  const TalentSkillShowcaseWidget(
      {super.key,
      required this.imageUrl,
      required this.authorName,
      required this.datePosted,
      required this.postTitle,
      required this.likesCount,
      required this.commentsCount,
      required this.mediaURL});

  final String imageUrl;
  final String authorName;
  final String datePosted;
  final String postTitle;
  final String mediaURL;
  final String likesCount;
  final String commentsCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(AppDimensions.screenWidth),
              child: Image.asset(
                imageUrl,
                width: AppDimensions.width80,
                height: AppDimensions.width80,
              ),
            ),
            SizedBox(
              width: AppDimensions.spacing20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(authorName),
                SizedBox(
                  width: AppDimensions.spacing5,
                ),
                Text(
                  datePosted,
                  style: const TextStyle(fontWeight: FontWeight.w200),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: AppDimensions.spacing20,
        ),
        Text(postTitle),
        SizedBox(
          height: AppDimensions.spacing20,
        ),
        SizedBox(
          width: AppDimensions.width500,
          height: AppDimensions.height450,
          child: Image(
            image: AssetImage(
              mediaURL,
            ),
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(Icons.thumb_up),
                SizedBox(
                  width: AppDimensions.spacing10,
                ),
                Text(likesCount),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.chat),
                SizedBox(
                  width: AppDimensions.spacing10,
                ),
                Text(commentsCount),
              ],
            )
          ],
        ),
        SizedBox(
          height: AppDimensions.spacing30,
        ),
      ],
    );
  }
}
