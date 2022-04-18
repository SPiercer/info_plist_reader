import 'package:flutter/material.dart';

import 'package:info_plist_reader/info_plist_reader.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () async {
                  final value = await InfoPlistReader.getValue("CFBundleName");

                  debugPrint(value);
                },
                child: const Text("Get Value"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
