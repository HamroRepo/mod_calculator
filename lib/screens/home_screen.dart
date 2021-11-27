import 'package:flutter/material.dart';
import '../widgets/my_button.dart';

class HomeScreen extends StatelessWidget {
  final List buttons = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X"
  ];

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Colors.grey[900],
      title: const Text("Calculator"),
    );
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: appBar,
      body: Container(
        height: MediaQuery.of(context).size.height -
            appBar.preferredSize.height -
            MediaQuery.of(context).padding.top,
        padding: const EdgeInsets.all(10),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SizedBox(
              width: double.infinity,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerRight,
                          height: constraints.maxHeight * 0.10,
                          child: const Text(
                            "Calculation Part",
                          ),
                        ),
                        const SizedBox(
                          height: 0.05,
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          height: constraints.maxHeight * 0.10,
                          child: const Text("Calculation Result"),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      height: constraints.maxHeight * 0.75,
                      child: GridView.builder(
                          itemCount: buttons.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4),
                          itemBuilder: (context, int index) {
                            return MyButton(buttons[index]);
                          }),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
