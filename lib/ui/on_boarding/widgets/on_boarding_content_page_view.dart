import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/on_boarding/on_boarding_bloc.dart';
import 'package:inker_studio/domain/blocs/on_boarding/on_boarding_content.dart';

class OnBoardingContentPageView extends StatelessWidget {
  const OnBoardingContentPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingBloc, OnBoardingState>(
        builder: (context, state) {
      return PageView.builder(
        itemCount: state.contents.length,
        controller: state.pageController,
        onPageChanged: (index) =>
            context.read<OnBoardingBloc>().add(OnBoardingNextOrFoward(index)),
        itemBuilder: (context, index) {
          return _page(state.contents[index]);
        },
      );
    });
  }

  Widget _page(OnBoardingContent content) {
    return Container(
      color: Colors.transparent,
      child: Stack(
        children: [_backgroundImage(content), _content(content)],
      ),
    );
  }

  Widget _content(OnBoardingContent content) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Center(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 165, left: 39, right: 39),
                  child: Text(
                    content.title,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        height: 1.2,
                        fontFamily: 'Poppins'),
                  ),
                ),
                Container(
                    padding:
                        const EdgeInsets.only(top: 15, left: 39, right: 39),
                    child: Text(
                      content.description,
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          height: 1.2,
                          fontWeight: FontWeight.w400),
                    ))
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _backgroundImage(OnBoardingContent content) {
    return Positioned(
        bottom: content.bottomPosition,
        left: content.leftPosition,
        child: Stack(
          children: [
            Opacity(
                child: Image.asset(
                  content.backgroundImage,
                  height: content.height,
                ),
                opacity: 0.5),
            ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                child: Image.asset(content.backgroundImage,
                    height: content.height),
              ),
            )
          ],
        ));
  }
}
