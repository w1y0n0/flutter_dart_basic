import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // buat list items
    final List<String> items = [
      'Data types & variable',
      'Null Safety',
      'Operator',
      'IF Statement',
      'Map',
      'List',
      'Looping',
      'Functions',
      'Anonymous Functions',
      'Enum',
    ];
    int no = 0;

    return MaterialApp(
      title: "Flutter: Dart Basic",
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dart Basic'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  no += 1;
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(16, 2, 16, 2),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blueGrey.shade300,
                        child: Text(
                          no.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      title: Text(items[index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
