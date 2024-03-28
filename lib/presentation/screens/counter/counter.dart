import 'package:flutter/material.dart';
import 'package:flutter_trabajo_1/widget/customButton.dart';
import 'package:flutter_trabajo_1/widget/customButtonOperacionex.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int clickCounter = 1;
  int clickCounter2 = 1;
  int resultado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mi primer proyecto"),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter2',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            ButtonOperation(
              icon: Icons.plus_one,
              onPressed: () {
                clickCounter2++;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ButtonOperation(
              icon: Icons.exposure_minus_1,
              onPressed: () {
                clickCounter2--;
                setState(() {});
              },
            ),
            Text(
              '$clickCounter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            ButtonOperation(
              icon: Icons.plus_one,
              onPressed: () {
                clickCounter++;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ButtonOperation(
              icon: Icons.exposure_minus_1,
              onPressed: () {
                clickCounter--;
                setState(() {});
              },
            ),
            Text(
              '$resultado',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
          ], //para mandar una variable se usa comilla simple
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            icon: Icons.add,
            onPressed: () {
              resultado = clickCounter + clickCounter2;
              setState(() {});
            },
          ),
          const SizedBox(
            width: 10,
          ),
          CustomButton(
            icon: Icons.remove_rounded,
            onPressed: () {
              resultado = clickCounter - clickCounter2;
              setState(() {});
            },
          ),
          const SizedBox(
            width: 10,
          ),
          CustomButton(
            icon: Icons.close,
            onPressed: () {
              resultado = clickCounter * clickCounter2;
              setState(() {});
            },
          ),
          const SizedBox(
            width: 10,
          ),
          CustomButton(
            icon: Icons.minor_crash_outlined,
            onPressed: () {
              resultado = clickCounter / clickCounter2;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
