import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class QRcreatePage extends StatefulWidget {
  const QRcreatePage({Key? key}) : super(key: key);

  @override
  _QRcreatePageState createState() => _QRcreatePageState();
}

class _QRcreatePageState extends State<QRcreatePage> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(' '),
        ),
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BarcodeWidget(
                  data: controller.text,
                  barcode: Barcode.qrCode(),
                  color: Colors.black,
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    Expanded(child: buildTextField(context)),
                    const SizedBox(width: 12),
                    FloatingActionButton(
                      backgroundColor: Theme.of(context).primaryColor,
                      child: Icon(
                        Icons.done,
                        size: 30,
                      ),
                      onPressed: () => setState(() {}),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      );
  Widget buildTextField(BuildContext context) => TextField(
        controller: controller,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        decoration: InputDecoration(
            hintText: 'Enter thr data',
            hintStyle: TextStyle(color: Colors.grey[800]),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(
                  color: Theme.of(context).primaryColor,
                ))),
      );
}
