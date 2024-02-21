import 'package:beyond_ableism/config/constants/dimensions.dart';
import 'package:beyond_ableism/features/help/presentation/widgets/help_type_widget.dart';
import 'package:beyond_ableism/features/help/presentation/widgets/volunterer_widget.dart';
import 'package:beyond_ableism/mock/help_type.dart';
import 'package:beyond_ableism/mock/volunteers.dart';
import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final helpList = Help.helpData;
    final volunteerList = Volunteers.volunteerData;
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Need Help?',
            style: TextStyle(
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(
            AppDimensions.paddingMain,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('What do you need help with?'),
              SizedBox(
                height: AppDimensions.spacing10,
              ),
              SizedBox(
                height: AppDimensions.height350,
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: helpList.length,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: AppDimensions.screenWidth / 2,
                    mainAxisExtent: AppDimensions.height85,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: AppDimensions.spacing20,
                    mainAxisSpacing: AppDimensions.spacing20,
                  ),
                  itemBuilder: (context, index) {
                    return HelpTypeWidget(
                      iconType: helpList[index]['icon'],
                      text: helpList[index]['helptype'],
                    );
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    minimumSize: const Size.fromHeight(50),
                    backgroundColor: const Color.fromARGB(255, 60, 80, 192)),
                child: Text(
                  'Call for help',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: AppDimensions.fontMain,
                  ),
                ),
              ),
              SizedBox(
                height: AppDimensions.spacing40,
              ),
              const Text(
                'Volunteers Nearby',
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: AppDimensions.spacing40,
              ),
              SizedBox(
                height: AppDimensions.height450,
                child: ListView.builder(
                  itemCount: volunteerList.length,
                  itemBuilder: (context, index) {
                    return VolunteerWidget(
                      imageUrl: volunteerList[index]['image'],
                      volunteer: volunteerList[index]['name'],
                      distance: volunteerList[index]['distance'],
                      offers: volunteerList[index]['helpType'],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
