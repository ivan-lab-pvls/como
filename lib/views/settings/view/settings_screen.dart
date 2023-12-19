import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:italian_food/views/consts/app_text_style/settings_style.dart';

import 'package:url_launcher/url_launcher.dart';

import '../../app/views/my_in_app_web_view.dart';
import '../../consts/app_colors.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  Future<void> _launchURL(String urlString) async {
    Uri url = Uri.parse(urlString);
    if (await canLaunchUrl(url)) {
      final bool launched = await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      );
      if (!launched) {
        throw 'Could not launch $url';
      }
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Regolazioni',
          style: SettingsTextStyle.screenTitle,
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: AppColors.darkGreyColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: size.height * 0.15,
            ),
            ListTile(
              title: TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyInAppWebView(
                            url:
                                'https://docs.google.com/document/d/1IqwhI9Efws_63X9ekjwhU75ElJoMvuOqUDwUZmixr4E/edit?usp=sharing'),
                      ),
                    );
                    // _launchURL('https://google.com/');
                  },
                  style: const ButtonStyle(alignment: Alignment.centerLeft),
                  icon: SvgPicture.asset(
                    'assets/icons/tick_square.svg',
                    width: size.height * 0.035,
                    height: size.height * 0.035,
                    color: AppColors.darkOrangeColor,
                  ),
                  label: Text(
                    'Privacy Policy',
                    style: SettingsTextStyle.tile,
                  )),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            ListTile(
              title: TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyInAppWebView(
                            url:
                                'https://docs.google.com/document/d/1SXK4tpG8Ewoy7nE8i8diHgkUZq2z4B-roDEcsjyGtRU/edit?usp=sharing'),
                      ),
                    );
                  },
                  style: const ButtonStyle(alignment: Alignment.centerLeft),
                  icon: SvgPicture.asset(
                    'assets/icons/chat.svg',
                    width: size.height * 0.035,
                    height: size.height * 0.035,
                    color: AppColors.darkOrangeColor,
                  ),
                  label: const Text(
                    'Terms of use',
                    style: SettingsTextStyle.tile,
                  )),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            ListTile(
              title: TextButton.icon(
                  onPressed: () {
                    InAppReview.instance.openStoreListing(
                      appStoreId: '6474513010',
                    );
                  },
                  style: const ButtonStyle(alignment: Alignment.centerLeft),
                  icon: SvgPicture.asset(
                    'assets/icons/star_rate.svg',
                    width: size.height * 0.035,
                    height: size.height * 0.035,
                    color: AppColors.darkOrangeColor,
                  ),
                  label: const Text(
                    'Rate app',
                    style: SettingsTextStyle.tile,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
