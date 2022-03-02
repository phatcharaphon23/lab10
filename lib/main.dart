import 'package:flutter/material.dart';
import 'package:lab10/page/qr_create_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LAB10',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'LAB10',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barcode scanner'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => QRcreatePage())),
              style: ElevatedButton.styleFrom(primary: Colors.blueGrey[900]),
              child:
                  Text('Create QR Code', style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => QRcreatePage())),
              style: ElevatedButton.styleFrom(primary: Colors.blueGrey[900]),
              child:
                  Text('Create QR Code', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
