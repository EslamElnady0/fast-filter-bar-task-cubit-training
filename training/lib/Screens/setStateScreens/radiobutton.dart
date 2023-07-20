import 'package:flutter/material.dart';
import 'package:training/Screens/setStateScreens/day14_training.dart';
import 'package:training/info.dart';

class RadioSetStateScreen extends StatefulWidget {
  const RadioSetStateScreen({super.key});

  @override
  State<RadioSetStateScreen> createState() => _RadioSetStateScreenState();
}

class _RadioSetStateScreenState extends State<RadioSetStateScreen> {
  int radioIndex = 0;
  @override
  Widget build(BuildContext context) {
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
              Column(
                children: [
                  for (int i = 0; i < 20; i++)
                    Radio(
                        value: numbers[i],
                        groupValue: radioIndex,
                        onChanged: (value) {
                          setState(() {
                            radioIndex = value!;
                          });
                        })
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const TraingStatefulScreen()));
                  },
                  child: const Text("Go to training page"))
            ],
          ),
        ),
      ),
    );
  }
}
