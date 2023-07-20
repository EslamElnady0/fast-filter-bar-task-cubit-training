import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'training_state.dart';

class TrainingCubit extends Cubit<TrainingState> {
  TrainingCubit() : super(TrainingOut());

  void trainingIn() {
    emit(TrainingIn());
  }

  void trainingOut() {
    emit(TrainingOut());
  }

  void trainingHold() {
    emit(TrainingHold());
  }

  void trainingComment() {
    emit(TrainingComment());
  }
}
