import 'package:beyond_ableism/core/constants/dimensions.dart';
import 'package:beyond_ableism/features/users/presentation/widgets/talent_skill_showcase_widget.dart';
import 'package:flutter/material.dart';

class TalentShowPage extends StatelessWidget {
  const TalentShowPage({super.key});

  @override
  Widget build(BuildContext context) {
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
          itemCount: 10,
          itemBuilder: (context, index) {
            return const TalentSkillShowcaseWidget(
                imageUrl: 'images/avatar.png',
                authorName: 'Drey',
                authorAge: '24',
                datePosted: '1d',
                postTitle:
                    'Hey yooooo, Take a look at this life painting I did',
                mediaURL: 'images/landscape.png',
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
        label: const Text('Showcase'),
      ),
    );
  }
}
