import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'visibilty_state.dart';

class VisibiltyCubit extends Cubit<VisibiltyState> {
  VisibiltyCubit() : super(VisibiltyOn());
  bool visibility = true;
  void visibilityOn() {
    visibility = true;
    emit(VisibiltyOn());
  }

  void visibilityOff() {
    visibility = false;
    emit(VisibiltyOff());
  }
}
