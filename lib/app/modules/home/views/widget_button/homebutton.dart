import 'package:flutter/material.dart';
import 'package:flutter_masonry_view/flutter_masonry_view.dart';
import 'package:get/get.dart';
 
import '../../../../themes/colors-theme.dart';
import '../../../detail/views/detail_view.dart';
import '../../controllers/home_controller.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Best men\'s pick for you ",
                        style: TextStyle(
                            color: ThemeColor.primaryBlack,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Best men\'s pick for you ",
                        style: TextStyle(
                           color: ThemeColor.primaryBlack,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            MasonryView(
              listOfItem: images,
              numberOfColumn: 2,
              itemBuilder: (item) {
                return InkWell(
                  onTap: () {
                    Get.to(
                      () => const DetailView(),
                      transition: Transition.rightToLeft,
                      arguments: {
                        "src": item,
                      },
                      duration: const Duration(milliseconds: 250),
                    );
                  },
                  child: Image.network(item),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

