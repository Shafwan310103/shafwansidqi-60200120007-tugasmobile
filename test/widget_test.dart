import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contoh Aplikasi Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contoh Aplikasi Flutter'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            Text(
              'Selamat datang di Aplikasi Flutter',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Tombol 1'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Tombol 2'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Tombol 3'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: GridView.count(
                  crossAxisCount: 2,
                  children: List.generate(
                    10,
                    (index) {
                      return Card(
                        child: Center(
                          child: Text(
                            'Item ${index + 1}',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}