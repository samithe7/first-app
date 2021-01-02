import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding_screen/controller/onbored_con.dart';

class OnBoradScreen extends StatelessWidget {
  final StoryContolar storyContolar = StoryContolar();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: storyContolar.nextPageFor,
        child: Text('next'),
      ),
      body: Stack(
        children: [
          PageView.builder(
            controller: storyContolar.pageController,
            onPageChanged: storyContolar.selectPageIndex,
            itemCount: storyContolar.storyModel.length,
            itemBuilder: (context, index) => Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.network(storyContolar.storyModel[index].image),
                  Text(storyContolar.storyModel[index].title),
                  Text(storyContolar.storyModel[index].description)
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 22,
            left: 22,
            child: Row(
              children: List.generate(
                storyContolar.storyModel.length,
                (index) => Obx(() => Container(
                      margin: const EdgeInsets.all(7),
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                        color: storyContolar.selectPageIndex.value == index
                            ? Colors.redAccent
                            : Colors.green,
                        shape: BoxShape.circle,
                      ),
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
