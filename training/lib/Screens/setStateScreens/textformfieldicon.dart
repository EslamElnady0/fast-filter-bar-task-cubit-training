import 'package:flutter/material.dart';
import 'package:training/Screens/setStateScreens/radiobutton.dart';

class TextFieldSetState extends StatefulWidget {
  const TextFieldSetState({super.key});

  @override
  State<TextFieldSetState> createState() => _TextFieldSetStateState();
}

class _TextFieldSetStateState extends State<TextFieldSetState> {
  bool isPassowrd = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                obscureText: isPassowrd,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isPassowrd = !isPassowrd;
                          });
                        },
                        icon: Icon(isPassowrd
                            ? Icons.visibility_off
                            : Icons.visibility))),
              ),
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => const RadioSetStateScreen()));
                  },
                  child: const Text("to stateful radio screen")),
            ],
          ),
        ),
      ),
    );
  }
}
