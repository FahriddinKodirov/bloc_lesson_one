import 'package:flutter_bloc/flutter_bloc.dart';

class TextMarkerCubit extends Cubit<String> {
  TextMarkerCubit() : super('');

  void fetchText(String word) {
    emit(word.toUpperCase());
  }
}



