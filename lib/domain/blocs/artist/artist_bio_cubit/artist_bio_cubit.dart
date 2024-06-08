import 'package:flutter_bloc/flutter_bloc.dart';

class ArtistBioCubitCubit extends Cubit<double> {
  ArtistBioCubitCubit() : super(360);

  void updateExpandedHeight(double height) {
    emit(height);
  }

  void resetExpandedHeight() {
    emit(360);
  }
}
