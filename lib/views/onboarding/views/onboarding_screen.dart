import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:italian_food/views/consts/app_text_style/onboarding_style.dart';
import 'package:italian_food/views/onboarding/widgets/introduction_widget.dart';
import 'package:italian_food/views/onboarding/widgets/review_widget.dart';

import '../../../blocs/onboarding_cubit/onboarding_cubit.dart';
import '../../../util/app_routes.dart';
import '../../consts/app_colors.dart';

class OnboardingScreen extends StatefulWidget {
  final bool? isFirstTime;

  const OnboardingScreen({
    Key? key,
    this.isFirstTime,
  }) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final CarouselController _carouselController = CarouselController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(_current == 0
                ? 'assets/images/onboarding1.png'
                : 'assets/images/onboarding2.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.transparent.withOpacity(1),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: CarouselSlider(
                items: const [
                  IntroductionWidget(),
                  ReviewWidget(),
                ],
                carouselController: _carouselController,
                options: CarouselOptions(
                  height: size.height * 0.6,
                  autoPlay: false,
                  //  enlargeCenterPage: true,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  )),
              width: double.infinity,
              height: size.height * 0.36,
              child: Padding(
                padding: EdgeInsets.all(size.height * 0.02),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          _current == 0
                              ? 'Cibo italiano.'
                              : 'Apprezziamo il tuo \nfeedback!',
                          style: OnboardingTextStyle.introduction,
                          textAlign: TextAlign.start,
                          softWrap: true,
                          overflow: TextOverflow.visible,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.005,
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            _current == 0
                                ? 'Cucina tradizionale italiana, diffusa e popolare in tutto il mondo, grazie a piatti come la pizza e gli spaghetti.'
                                : 'Every day we are getting better due to your ratings and reviews — that helps us protect your accounts.',
                            style: OnboardingTextStyle.description,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () async {
                        context.read<OnboardingCubit>().setFirstTime();
                        Navigator.pushReplacementNamed(context, AppRoutes.home);
                      },
                      icon: Container(
                        height: size.width * 0.12,
                        width: size.width * 0.12,
                        decoration: const BoxDecoration(
                          color: AppColors.darkOrangeColor,
                          shape: BoxShape.circle,
                        ),
                        padding: const EdgeInsets.all(8),
                        // The padding inside the circle
                        child: SvgPicture.asset(
                          'assets/icons/arrow_left.svg',
                          color: AppColors.whiteColor,
                          width: size.width * 0.05,
                          height: size.width * 0.05,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(2, (index) {
                        return Container(
                          width: 8.0,
                          height: 8.0,
                          margin: const EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _current == index
                                ? AppColors.darkOrangeColor
                                : AppColors.darkOrangeColor.withOpacity(0.6),
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
