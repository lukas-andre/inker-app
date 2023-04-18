import 'package:bloc/bloc.dart';

class ArtistBioCubitCubit extends Cubit<double> {
  ArtistBioCubitCubit() : super(380);

  void updateExpandedHeight(double height) {
    emit(height);
  }

  void resetExpandedHeight() {
    emit(380);
  }
}
