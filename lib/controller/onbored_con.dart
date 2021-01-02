import 'package:flutter/cupertino.dart';
import 'package:onboarding_screen/model/story_model.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';
import 'package:get/get.dart';
import 'package:onboarding_screen/views/onbord_screen.dart';
import 'package:onboarding_screen/views/sami_page.dart';

class StoryContolar extends GetxController {
  RxInt selectPageIndex = 0.obs;
  final PageController pageController = PageController();
  bool get isLastpage => selectPageIndex.value == storyModel.length - 1;

  nextPageFor() {
    if (isLastpage) {
      Get.to(SamiP());
    } else {
      pageController.nextPage(duration: 1.seconds, curve: Curves.bounceInOut);
    }
  }

  List<StoryModel> storyModel = const [
    StoryModel(
        image: 'https://images.pexels.com/photos/870036/pexels-photo-870036.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        title: 'Samiul alim sw 1',
        description:
            'Hey there, In this video we will learn how to create onboarding page in Flutter mobile application '),
    StoryModel(
        image: 'https://images.pexels.com/photos/870036/pexels-photo-870036.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        title: 'Samiul alim sw 2',
        description:
            'Hey there, In this video we will learn how to create onboarding page in Flutter mobile application '),
    StoryModel(
        image: 'https://images.pexels.com/photos/870036/pexels-photo-870036.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        title: 'Samiul alim sw 3',
        description:
            'Hey there, In this video we will learn how to create onboarding page in Flutter mobile application '),
    StoryModel(
        image: 'https://images.pexels.com/photos/870036/pexels-photo-870036.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        title: 'Samiul alim sw 4',
        description:
            'Hey there, In this video we will learn how to create onboarding page in Flutter mobile application '),
    StoryModel(
        image: 'https://images.pexels.com/photos/870036/pexels-photo-870036.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        title: 'Samiul alim sw 5',
        description:
            'Hey there, In this video we will learn how to create onboarding page in Flutter mobile application '),
    StoryModel(
        image: 'https://images.pexels.com/photos/870036/pexels-photo-870036.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        title: 'Samiul alim sw 6',
        description:
            'Hey there, In this video we will learn how to create onboarding page in Flutter mobile application '),
    StoryModel(
        image: 'https://images.pexels.com/photos/5513283/pexels-photo-5513283.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        title: 'Samiul alim sw 7',
        description:
            'Hey there, In this video we will learn how to create onboarding page in Flutter mobile application '),
  ];
}
