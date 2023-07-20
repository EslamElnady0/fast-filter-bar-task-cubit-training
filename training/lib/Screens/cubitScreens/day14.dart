import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training/Screens/setStateScreens/filterbar.dart';
import 'package:training/cubit/cubit/TrainingCubit/cubit/training_cubit.dart';

class TrainingScreen extends StatelessWidget {
  const TrainingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    context.read<TrainingCubit>().trainingIn();
                  },
                  child: const Text("Enter Training")),
              ElevatedButton(
                  onPressed: () {
                    context.read<TrainingCubit>().trainingOut();
                  },
                  child: const Text("Exit Training")),
              ElevatedButton(
                  onPressed: () {
                    context.read<TrainingCubit>().trainingHold();
                  },
                  child: const Text("Hold Training")),
              ElevatedButton(
                  onPressed: () {
                    context.read<TrainingCubit>().trainingComment();
                  },
                  child: const Text("Writ a comment about Training")),
              const SizedBox(
                height: 100,
              ),
              BlocBuilder<TrainingCubit, TrainingState>(
                  builder: (context, state) {
                if (state is TrainingOut) {
                  return const Text("You didn't join Training yet!");
                } else if (state is TrainingIn) {
                  return const Text("In Training");
                } else if (state is TrainingHold) {
                  return const Text("Hold!");
                } else {
                  return TextFormField();
                }
              }),
              const SizedBox(
                height: 200,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const FilterBarStateful()));
                  },
                  child: const Text("Go to stateful filter bar screen"))
            ],
          ),
        ),
      ),
    );
  }
}
