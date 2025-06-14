import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/on_boarding/on_boarding_bloc.dart';
import 'package:inker_studio/domain/blocs/on_boarding/on_boarding_content.dart';
import 'package:inker_studio/utils/responsive/responsive_breakpoints.dart';

class OnBoardingContentPageView extends StatelessWidget {
  const OnBoardingContentPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingBloc, OnBoardingState>(
        builder: (context, state) {
      return PageView.builder(
        itemCount: state.contents.length,
        controller: state.pageController,
        onPageChanged: (index) =>
            context.read<OnBoardingBloc>().add(OnBoardingNextOrForward(index)),
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
    return Builder(builder: (context) {
      final topPadding = Responsive.value(
        context,
        mobile: 120,
        tablet: 140,
        desktop: 165,
      );
      
      final horizontalPadding = Responsive.value(
        context,
        mobile: 24,
        tablet: 40,
        desktop: 60,
        desktopLarge: 80,
      );
      
      final titleFontSize = Responsive.fontSize(context, 32);
      final descriptionFontSize = Responsive.fontSize(context, 16);
      
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Center(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: topPadding,
                      left: horizontalPadding,
                      right: horizontalPadding,
                    ),
                    child: Text(
                      content.title,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: titleFontSize,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        height: 1.2,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: 15,
                      left: horizontalPadding,
                      right: horizontalPadding,
                    ),
                    child: Text(
                      content.description,
                      style: TextStyle(
                        fontSize: descriptionFontSize,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        height: 1.2,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    });
  }

  Widget _backgroundImage(OnBoardingContent content) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenHeight = MediaQuery.of(context).size.height;
        final screenWidth = MediaQuery.of(context).size.width;
        
        final imageHeight = Responsive.value(
          context,
          mobile: screenHeight * 0.5,
          tablet: screenHeight * 0.6,
          desktop: screenHeight * 0.7,
        ).clamp(300.0, 900.0);
        
        final bottomPosition = Responsive.value(
          context,
          mobile: content.bottomPosition * 0.5,
          tablet: content.bottomPosition * 0.7,
          desktop: content.bottomPosition,
        );
        
        final leftPosition = Responsive.value(
          context,
          mobile: (screenWidth - imageHeight) / 2,
          tablet: content.leftPosition * 0.8,
          desktop: content.leftPosition,
        );
        
        return Positioned(
          bottom: bottomPosition,
          left: leftPosition,
          child: Stack(
            children: [
              Opacity(
                opacity: 0.5,
                child: Image.asset(
                  content.backgroundImage,
                  height: imageHeight,
                ),
              ),
              ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                  child: Image.asset(
                    content.backgroundImage,
                    height: imageHeight,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
