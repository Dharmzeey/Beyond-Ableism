import 'package:beyond_ableism/config/constants/dimensions.dart';
import 'package:flutter/material.dart';

class CommunityPostWidget extends StatelessWidget {
  const CommunityPostWidget(
      {super.key,
      required this.imageUrl,
      required this.authorName,
      required this.datePosted,
      required this.postContent,
      required this.likesCount,
      required this.commentsCount});

  final String imageUrl;
  final String authorName;
  final String datePosted;
  final String postContent;
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
        Text(postContent),
        SizedBox(
          height: AppDimensions.spacing20,
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
