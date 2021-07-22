import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/services/local_storage/local_storage.dart';

class AppThemeCubit extends Cubit<bool> {
  AppThemeCubit(this._localStorage) : super(false);

  final LocalStorage _localStorage;

  bool _isDark = false;
  bool get isDark => _isDark;

  Future<void> init() async {
    _isDark = await _localStorage.isDarkMode();
    emit(_isDark);
  }

  Future<void> updateTheme(bool isDark) async {
    _isDark = isDark;
    await _localStorage.updateTheme(isDark);
    emit(_isDark);
  }
}
