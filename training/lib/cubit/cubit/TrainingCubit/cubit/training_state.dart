part of 'training_cubit.dart';

@immutable
abstract class TrainingState {}

class TrainingOut extends TrainingState {}

class TrainingIn extends TrainingState {}

class TrainingHold extends TrainingState {}

class TrainingComment extends TrainingState {}
