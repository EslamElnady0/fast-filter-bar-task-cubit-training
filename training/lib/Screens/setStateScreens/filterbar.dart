import 'package:flutter/material.dart';
import 'package:training/Screens/setStateScreens/textformfieldicon.dart';

import '../../info.dart';

class FilterBarStateful extends StatefulWidget {
  const FilterBarStateful({super.key});

  @override
  State<FilterBarStateful> createState() => _FilterBarStatefulState();
}

class _FilterBarStatefulState extends State<FilterBarStateful> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: SizedBox(
              height: 30,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  for (int i = 0; i < info.length; i++)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            index = i;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: index == i ? Colors.red : Colors.grey,
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            info[i],
                            style: const TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                    )
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
          ),
          switch (index) {
            0 => Text("${info[index]} الطلبات "),
            1 => Text(" الطلبات ${info[index]}"),
            2 => Text(" الطلبات ${info[index]}"),
            3 => Text(" الطلبات ${info[index]}"),
            4 => Text(" الطلبات ${info[index]}"),
            _ => Text(" الطلبات ${info[index]}"),
          },
          const SizedBox(
            height: 100,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const TextFieldSetState()));
              },
              child: const Text("To Next Page")),
        ],
      ),
    ));
  }
}
