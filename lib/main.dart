import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Manajemen State",
          style: TextStyle(
            color: value ? Colors.amber : Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width / 2,
              color: value ? Colors.amber : Colors.black,
              margin: EdgeInsets.only(top: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Hitam"),
                Switch(
                    value: value,
                    onChanged: (v) {
                      setState(() {
                        this.value = v;
                      });
                    }),
                Text("Kuning Amber"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
