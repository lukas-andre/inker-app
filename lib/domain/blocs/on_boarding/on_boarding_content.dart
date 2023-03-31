import 'package:equatable/equatable.dart';

class OnBoardingContent extends Equatable {
  final String title;
  final String description;
  final String backgroundImage;
  final bool showSkipButton;
  final bool showSingInAndRegisterButtons;

  final double bottomPosition;
  final double leftPosition;
  final double? height;

  const OnBoardingContent({
    required this.title,
    required this.description,
    required this.backgroundImage,
    required this.showSkipButton,
    required this.showSingInAndRegisterButtons,
    required this.bottomPosition,
    required this.leftPosition,
    this.height,
  });

  @override
  List<Object?> get props => [
        title,
        description,
        backgroundImage,
        showSkipButton,
        showSingInAndRegisterButtons,
        bottomPosition,
        leftPosition,
        height,
        // page1,
        // page2,
        // page3
      ];

  @override
  bool get stringify => true;

  static OnBoardingContent page1 = const OnBoardingContent(
      title: 'Bienvenido a Inker',
      description: 'Descubre los mejores tatuadores y barberos en tu localidad',
      backgroundImage: 'assets/onboarding/page_1/image.png',
      showSkipButton: true,
      showSingInAndRegisterButtons: false,
      bottomPosition: 0,
      leftPosition: 0);

  static OnBoardingContent page2 = const OnBoardingContent(
      title: 'Reservar cita desde la app',
      description:
          'Reserva de forma segura con cientos de nuestros negocios disponibles',
      backgroundImage: 'assets/onboarding/page_2/image.png',
      showSkipButton: true,
      showSingInAndRegisterButtons: false,
      bottomPosition: -10,
      leftPosition: -30,
      height: 900);

  static OnBoardingContent page3 = const OnBoardingContent(
      title: 'Una red social llena de arte',
      description:
          'Visualiza, comenta y comparte los trabajos de los artistas cerca de ti',
      backgroundImage: 'assets/onboarding/page_3/image.png',
      showSkipButton: false,
      showSingInAndRegisterButtons: true,
      bottomPosition: -60,
      leftPosition: -30,
      height: 900);
}
