import 'package:flutter/material.dart';

class TraingStatefulScreen extends StatefulWidget {
  const TraingStatefulScreen({super.key});

  @override
  State<TraingStatefulScreen> createState() => _TraingStatefulScreenState();
}

class _TraingStatefulScreenState extends State<TraingStatefulScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      index = 1;
                    });
                  },
                  child: const Text("Enter Training")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      index = 0;
                    });
                  },
                  child: const Text("Exit Training")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      index = 2;
                    });
                  },
                  child: const Text("Hold Training")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      index = 4;
                    });
                  },
                  child: const Text("Writ a comment about Training")),
              const SizedBox(
                height: 100,
              ),
              switch (index) {
                0 => const Text("You didn't join Training yet!"),
                1 => const Text("In Training"),
                2 => const Text("Hold!"),
                _ => TextFormField(),
              },
              const SizedBox(
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
