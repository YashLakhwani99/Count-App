import 'package:counter_app_using_provider/Models/CounterNotifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CounterNotifier>(
      create: (context) => CounterNotifier(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "CountApp",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 29,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 60),
          child: Consumer<CounterNotifier>(
            builder: (context, value, child) {
              return Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    SizedBox(
                      height: 150,
                    ),
                    Text(
                      value.ans.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 175),
                    ),
                    const SizedBox(
                      height: 175,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: IconButton(
                            onPressed: () {
                              value.decrementValue();
                            },
                            icon: const Icon(
                              Icons.remove_circle_outline_rounded,
                              size: 45,
                            ),
                          ),
                        ),
                        Expanded(
                          child: IconButton(
                            onPressed: () {
                              value.restartValue();
                            },
                            icon: const Icon(
                              Icons.restart_alt_rounded,
                              size: 45,
                            ),
                          ),
                        ),
                        Expanded(
                          child: IconButton(
                            onPressed: () {
                              value.incrementValue();
                            },
                            icon: const Icon(
                              Icons.add_circle_outline_rounded,
                              size: 45,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
