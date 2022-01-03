import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/onboarding/onboarding_bloc.dart';
import 'package:inker_studio/ui/create_account/create_account_by_type_page.dart';
import 'package:inker_studio/ui/login/login_page.dart';

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
            if (state.skiped) {}
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
                                        height: 20,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Colors.red),
                                        child: Center(
                                            child: Text(
                                          state.onboardingPages[index].position,
                                          style: TextStyle(color: Colors.white),
                                        ))),
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
                                                              ? Color.fromRGBO(
                                                                  95,
                                                                  37,
                                                                  254,
                                                                  1)
                                                              : Colors.grey,
                                                      shape: BoxShape.circle),
                                                ),
                                              ))),
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
                                            Color.fromRGBO(84, 82, 110, .5)
                                          ],
                                          radius: 1,
                                          stops: [0.5],
                                        )),
                                    child: Container(
                                        child: Image.asset(
                                      state.onboardingPages[index].imageAsset,
                                      fit: BoxFit.fill,
                                    ))),
                              ),
                            ],
                          ),
                        );
                      }),
                  AnimatedOpacity(
                    curve: Curves.fastOutSlowIn,
                    opacity:
                        state.onboardingPages[state.selectedPageIndex].registro
                            ? 1.0
                            : 0.0,
                    duration: const Duration(milliseconds: 1000),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Center(
                              child: TextButton(
                                  onPressed: () {
                                    if (state
                                        .onboardingPages[
                                            state.selectedPageIndex]
                                        .registro) {
                                      Navigator.of(context).push<void>(CreateUserByTypePage.route());

                                    }
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(35, 36, 52, 1),
                                        borderRadius:
                                            BorderRadius.circular(14.0)),
                                    width: 387,
                                    height: 60,
                                    child: const Center(
                                        child: Text(
                                      "Registrarme",
                                      style:
                                          const TextStyle(color: Colors.white),
                                    )),
                                  )),
                            ),
                            Center(
                              child: TextButton(
                                  onPressed: () {
                                    if (state
                                        .onboardingPages[
                                            state.selectedPageIndex]
                                        .registro) {
                                      Navigator.of(context).push<void>(LoginPage.route());
                                      
                                    }
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(116, 80, 255, 1),
                                      borderRadius: BorderRadius.circular(
                                        14.0,
                                      ),
                                    ),
                                    width: 387,
                                    height: 60,
                                    child: Center(
                                        child: Text(
                                      "Iniciar Sesion",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                  )),
                            ),
                            Container(
                              height: 30,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  AnimatedOpacity(
                    opacity: state.onboardingPages[state.selectedPageIndex]
                            .isVisibleSkip
                        ? 1.0
                        : 0.0,
                    duration: const Duration(milliseconds: 500),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              BlocProvider.of<OnboardingBloc>(context)
                                  .add(const OnboardingButtonSkipPressed());
                              if (state.onboardingPages[state.selectedPageIndex]
                                  .isVisibleSkip) {
                                Navigator.pushNamed(context, 'login');
                              }
                            },
                            child: const Text(
                              'Saltar',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
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
