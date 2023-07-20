import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training/Screens/cubitScreens/radio.dart';

import '../../cubit/cubit/visibilitycubit/cubit/visibilty_cubit.dart';

class TextFieldVisibilty extends StatelessWidget {
  const TextFieldVisibilty({super.key});

  @override
  Widget build(BuildContext context) {
    VisibiltyCubit cubit = context.read<VisibiltyCubit>();
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BlocBuilder<VisibiltyCubit, VisibiltyState>(
                builder: (context, state) {
                  return TextFormField(
                    obscureText: cubit.visibility,
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(
                            onPressed: () {
                              if (state is VisibiltyOn) {
                                cubit.visibilityOff();
                              } else {
                                cubit.visibilityOn();
                              }
                            },
                            icon: Icon(cubit.visibility
                                ? Icons.visibility_off
                                : Icons.visibility))),
                  );
                },
              ),
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => const RadioButtonScreen()));
                  },
                  child: const Text("to radio screen")),
            ],
          ),
        ),
      ),
    );
  }
}
