import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../info.dart';

part 'radio_state.dart';

class RadioCubit extends Cubit<RadioState> {
  RadioCubit() : super(RadioInitial());
  int radioIndex = numbers[0];

  void radioSelected() {
    emit(RadioSelected());
  }
}
