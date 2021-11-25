import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                  Container(
                    alignment: Alignment.centerRight,
                    height: constraints.maxHeight * 0.10,
                    child: const Text(
                      "Calculation Part",
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    height: constraints.maxHeight * 0.10,
                    child: const Text("Calculation Result"),
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
