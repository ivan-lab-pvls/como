import 'package:flutter/material.dart';
import 'package:italian_food/views/consts/app_colors.dart';
import 'package:italian_food/views/consts/app_text_style/menu_style.dart';

class CategoryWidget extends StatelessWidget {
  final VoidCallback onTap;
  final ImageProvider? icon;
  final String title;

  const CategoryWidget({
    Key? key,
    required this.onTap,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: GestureDetector(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.darkGreyColor,
          ),
          child: Row(
            children: [
              SizedBox(
                width: size.width * 0.02,
              ),
              if (icon != null) ...[
                Image(
                    image: icon!,
                    width: size.width * 0.06,
                    height: size.width * 0.06),
              ],
              SizedBox(
                width: size.width * 0.02,
              ),
              Text(
                title,
                style: MenuTextStyle.category,
              ),
              SizedBox(
                width: size.width * 0.02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
