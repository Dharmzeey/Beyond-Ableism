import 'package:beyond_ableism/config/constants/dimensions.dart';
import 'package:beyond_ableism/features/talent_and_skills/presentation/pages/talent_post_create.dart';
import 'package:beyond_ableism/features/talent_and_skills/presentation/widgets/talent_skill_showcase_widget.dart';
import 'package:beyond_ableism/mock/talent_post.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TalentShowPage extends StatelessWidget {
  const TalentShowPage({super.key});

  @override
  Widget build(BuildContext context) {
    final talentPost = TalentShowcase.talentPosts;
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Talent and Skill Showcase',
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppDimensions.paddingMain),
        child: ListView.builder(
          itemCount: talentPost.length,
          itemBuilder: (context, index) {
            return TalentSkillShowcaseWidget(
              
                imageUrl: talentPost[index]['image'],
                authorName: talentPost[index]['username'],
                datePosted: talentPost[index]['hoursAgo'],
                postTitle:
                    talentPost[index]['title'],
                mediaURL: talentPost[index]['mediaURL'],
                likesCount: talentPost[index]['likesCount'],
                commentsCount: talentPost[index]['commentCount'],);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Get.to(() => const TalentPostCreatePage());
        },
        icon: const Icon(
          Icons.add,
        ),
        label: const Text('Showcase'),
      ),
    );
  }
}
