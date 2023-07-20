import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training/Screens/cubitScreens/day14.dart';
import 'package:training/info.dart';

import '../../cubit/cubit/radiocubit/radio_cubit.dart';

class RadioButtonScreen extends StatelessWidget {
  const RadioButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RadioCubit cubit = context.read<RadioCubit>();
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            children: [
              BlocBuilder<RadioCubit, RadioState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      for (int i = 0; i < 20; i++)
                        Radio(
                            value: numbers[i],
                            groupValue: cubit.radioIndex,
                            onChanged: (value) {
                              cubit.radioIndex = value!;
                              cubit.radioSelected();
                            })
                    ],
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const TrainingScreen()));
                  },
                  child: const Text("Go to traing page"))
            ],
          ),
        ),
      ),
    );
  }
}
