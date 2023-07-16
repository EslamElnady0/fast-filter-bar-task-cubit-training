import 'package:flutter/material.dart';
import 'package:training/info.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            }
          ],
        ),
      ),
    );
  }
}
