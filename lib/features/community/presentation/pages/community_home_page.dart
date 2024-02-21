import 'package:beyond_ableism/config/constants/dimensions.dart';
import 'package:beyond_ableism/features/community/presentation/pages/community_post_create.dart';
import 'package:beyond_ableism/features/community/presentation/widgets/community_post_widget.dart';
import 'package:beyond_ableism/mock/community_post.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommunityHomePage extends StatelessWidget {
  const CommunityHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final communityPost = CommunityPost.communityPosts;
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Community',
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppDimensions.paddingMain),
        child: ListView.builder(
          itemCount: communityPost.length,
          itemBuilder: (context, index) {
            return CommunityPostWidget(
                imageUrl: communityPost[index]['image'],
                authorName: communityPost[index]['username'],
                datePosted: communityPost[index]['hoursAgo'],
                postContent:
                    communityPost[index]['content'],
                likesCount: communityPost[index]['likesCount'],
                commentsCount: communityPost[index]['commentCount']);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Get.to(() => const CommunityPostCreatePage());
        },
        icon: const Icon(
          Icons.add,
        ),
        label: const Text('Post'),
      ),
    );
  }
}
