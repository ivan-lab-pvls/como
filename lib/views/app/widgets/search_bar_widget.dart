import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:italian_food/views/consts/app_colors.dart';
import 'package:italian_food/views/consts/app_text_style/settings_style.dart';

import '../../../blocs/search_cubit/search_cubit.dart';
import '../../../blocs/search_cubit/search_state.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  _SearchBarWidgetState createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      context.read<SearchCubit>().updateSearch(_controller.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocConsumer<SearchCubit, SearchCubitState>(
      listenWhen: (previous, current) {
        return previous.search.isNotEmpty && current.search.isEmpty;
      },
      listener: (context, state) {
        _controller.clear();
      },
      builder: (context, state) {
        return SizedBox(
          width: size.width * 0.94,
          height: kToolbarHeight,
          child: TextField(
            controller: _controller,
            keyboardType: TextInputType.text,
            style: SettingsTextStyle.searchbarImpact,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.darkGreyColor,
              hintText: "Trova un piatto",
              hintStyle: SettingsTextStyle.searchbar,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: const BorderSide(
                  color: AppColors.darkOrangeColor,
                  width: 2.0,
                ),
              ),
              suffixIcon: _controller.text.isNotEmpty
                  ? IconButton(
                      icon: SvgPicture.asset(
                        'assets/icons/close_circle.svg',
                        color: AppColors.darkOrangeColor,
                      ),
                      onPressed: () {
                        context.read<SearchCubit>().clearSearch();
                      },
                    )
                  : Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: SvgPicture.asset(
                        'assets/icons/search.svg',
                        color: AppColors.darkOrangeColor,
                      ),
                    ),
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
