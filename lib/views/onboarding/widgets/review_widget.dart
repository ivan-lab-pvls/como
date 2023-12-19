import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../consts/app_colors.dart';
import '../../consts/app_text_style/onboarding_style.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: size.height * 0.4,
              margin: EdgeInsets.symmetric(
                  horizontal: 16, vertical: size.width * 0.12),
              decoration: BoxDecoration(
                color: AppColors.blackColor.withOpacity(0.6),
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(0.5),
                        Colors.black.withOpacity(0.1),
                        Colors.black.withOpacity(0.1),
                        Colors.black.withOpacity(0.5),
                      ],
                      stops: const [0, 0.1, 0.9, 1],
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(size.width * 0.06),
                    child: Column(
                      children: [
                        SizedBox(height: size.width * 0.03),
                        const Text(
                          'I\'m truly impressed with its features and user-friendliness',
                          textAlign: TextAlign.center,
                          style: OnboardingTextStyle.reviewTitle,
                        ),
                        SizedBox(height: size.width * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            5,
                            (index) => SvgPicture.asset(
                              'assets/icons/star.svg',
                              color: Colors.amberAccent,
                            ),
                          ),
                        ),
                        SizedBox(height: size.width * 0.025),
                        const Text(
                          'Discovering the Financial assistant APP has been a pivotal moment in my quest for financial literacy and management. This all-in-one financial education and monitoring app have not only simplified my financial life but also empowered me with insights and tools that are truly game-changing.',
                          textAlign: TextAlign.center,
                          style: OnboardingTextStyle.reviewText,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: size.width * 0.04,
              child: Image.asset(
                'assets/images/avatar.png',
                height: size.width * 0.17,
                width: size.width * 0.17,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
