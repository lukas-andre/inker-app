import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/onboarding/onboarding_bloc.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => OnboardingPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(69, 62, 155, 1),
      body: BlocProvider(
        create: (context) => OnboardingBloc(),
        child: BlocListener<OnboardingBloc, OnboardingState>(
          listener: (context, state) {
            // TODO: implement listener
            if(state.skiped){
              
            }
          },
          child: BlocBuilder<OnboardingBloc, OnboardingState>(
            builder: (context, state) {
              return Stack(
                children: [
                  PageView.builder(
                      onPageChanged: (int page) {
                        BlocProvider.of<OnboardingBloc>(context)
                            .add(OnboardingPageChanged(page));
                      },
                      itemCount: state.onboardingPages.length,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                Colors.black54,
                                Color.fromRGBO(90, 87, 121, 1),
                              ],
                                  begin: FractionalOffset.topCenter,
                                  end: FractionalOffset.bottomCenter)),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, bottom: 20, top: 90),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: 45,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Colors.red),
                                        child: Text(state
                                            .onboardingPages[index].position)),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 60, bottom: 0),
                                child: Text(
                                  state.onboardingPages[index].title,
                                  style: const TextStyle(
                                      fontSize: 40, color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 100, bottom: 0, top: 10),
                                child: Text(
                                  state.onboardingPages[index].description,
                                  style: const TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Row(
                                      children: List.generate(
                                          state.onboardingPages.length,
                                          (index) => Container(
                                                child: Container(
                                                  margin:
                                                      const EdgeInsets.all(3),
                                                  width: 8,
                                                  height: 8,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          state.selectedPageIndex ==
                                                                  index
                                                              ? Colors.blue
                                                              : Colors.grey,
                                                      shape: BoxShape.circle),
                                                ),
                                              )
                                              )
                                              ),
                                ),
                                height: 40,
                              ),
                              Expanded(
                                child: Container(
                                    height: 370,
                                    width: 430,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: RadialGradient(
                                          colors: [
                                            Color.fromRGBO(84, 82, 110, 1)
                                          ],
                                          radius: 1,
                                          stops: [0.5],
                                        )),
                                    child: Container(
                                      
                                        child: Image.asset(
                                          state
                                            .onboardingPages[index]
                                            .imageAsset,
                                            fit: BoxFit.fill,
                                            )
                                            )
                                            ),
                              ),
                            ],
                          ),
                        );
                      }),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            BlocProvider.of<OnboardingBloc>(context)
                                .add(const OnboardingButtonSkipPressed());
                          },
                          child: const Text(
                            'Saltar',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
