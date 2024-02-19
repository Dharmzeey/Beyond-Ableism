import 'package:beyond_ableism/config/constants/dimensions.dart';
import 'package:beyond_ableism/features/community/presentation/widgets/community_post_widget.dart';
import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
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
          itemCount: 10,
          itemBuilder: (context, index) {
            return const CommunityPostWidget(
                imageUrl: 'images/avatar.png',
                authorName: 'James',
                authorAge: '19',
                datePosted: '2d',
                postContent:
                    'Does anyone have tips on how to stay positive when you are feeling down??',
                likesCount: '34',
                commentsCount: '23');
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(
          Icons.add,
        ),
        label: const Text('Post'),
      ),
    );
  }
}
