part of 'onboarding_bloc.dart';

 class OnboardingState extends Equatable {
   OnboardingState({
    this.skiped = false,
    this.selectedPageIndex = 0,
    
  });

  final bool skiped;

  final int selectedPageIndex;
  
  final List<OnboardingInfo> onboardingPages=[
    OnboardingInfo('assets/PNG/Onboarding_01.png', 'Bienvenido a Inker 🧔🏻', 'Descubre los mejores tatuadores y  barberos en tu localidad.', '1 de 3',false, true),
    OnboardingInfo('assets/PNG/onboarding_02.png', 'Reserva cita desde la app', 'Reserva de forma segura con cientos de nuestros negocios disponibles','2 de 3',false, true),
    OnboardingInfo('assets/PNG/mintosko-GZN-6X85_Jw-unsplash.png', 'Una red social llena de arte', 'Visualiza , comenta y comparte los trabajos de los artistas cerca de ti','3 de 3',true, false),
  ];
  
  OnboardingState copyWith({
    bool? skiped,
    int? selectedPageIndex
    
  }) {
    return OnboardingState(
      selectedPageIndex: selectedPageIndex?? this.selectedPageIndex,
      skiped: skiped?? this.skiped,
      
      
    );
  }

  @override
  List<Object> get props => [
    selectedPageIndex, onboardingPages,
    

  ];


}

