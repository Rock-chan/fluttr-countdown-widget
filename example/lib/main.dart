import 'package:countdown_widget/countdown_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Countdown Example'),
        ),
        body: Center(
          child: CountDownWidget(
            countDownTime: 40404039934,
            builder: (context, day, hour, minute, second) {
              return Container(
                constraints: const BoxConstraints(maxWidth: 168.0),
                height: 18.0,
                alignment: Alignment.bottomLeft,
                margin: const EdgeInsets.only(top: 3.5),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "$day",
                        style: const TextStyle(fontSize: 13.0, color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                      const TextSpan(
                        text: "天 ",
                        style: TextStyle(fontSize: 10.0, color: Color(0xffa29bb0)),
                      ),
                      TextSpan(
                        text: "$hour",
                        style: const TextStyle(fontSize: 13.0, color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                      const TextSpan(
                        text: "时 ",
                        style: TextStyle(fontSize: 10.0, color: Color(0xffa29bb0)),
                      ),
                      TextSpan(
                        text: "$minute",
                        style: const TextStyle(fontSize: 13.0, color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                      const TextSpan(
                        text: "分 ",
                        style: TextStyle(fontSize: 10.0, color: Color(0xffa29bb0)),
                      ),
                      TextSpan(
                        text: "$second",
                        style: const TextStyle(fontSize: 13.0, color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                      const TextSpan(
                        text: "秒 ",
                        style: TextStyle(fontSize: 10.0, color: Color(0xffa29bb0)),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}